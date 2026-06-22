;;;; -*- Mode: Common-Lisp; Author: denes.cselovszky@gmail.com -*- 
                                                                              ;

(in-package #:dfsig)


;; ----------------------------------------------------------------------
;; Global vars


(defparameter *independent-exe* nil)


(defun full-name (row)
  (format nil "~{~a~^ ~}"
          (mapcar #'(lambda (column)
                      (let ((value (xcref row column)))
                        (if (empty-cell-p value) "" value)))
                  '(12 13 14))))


(defun parse-taxid (string)
  (let ((pure (remove-if-not #'digit-char-p string)))
    (parse-number pure)))


(defun taxid (value)
  (let ((number (cond ((stringp value) (parse-taxid value))
                      ((numberp value) value)
                      (t (error "Tax ID ~a is not a number or string." value)))))
    (if (not (<= 10000000000 number 99999999999))
      (error "TAX ID ~a should have 11 digits." number)
      (let ((string (format nil "~a" number)))
        (concatenate 'string
                     (subseq string 0 8)
                     "-"
                     (subseq string 8 9)
                     "-"
                     (subseq string 9))))))


(defparameter *pkeys* '(:outdir :sourcefile))


(defun row-ids (row)
  (format nil "   SZEMÉLY: ~a ~a ~a (adóazonosító: ~a)~%   INTÉZMÉNY: ~a, ~a~%   BEOSZTÁS: ~a"
          (xcref row 12) (xcref row 13) (if (empty-cell-p (xcref row 14)) "" (xcref row 14))
          (round (xcref row 2)) (xcref row 1) (xcref row 9) (xcref row 24)))


(defun start ()
  (in-package :dfsig)
  ;; Script object -----------------------------------------------------------------------
  (let ((obj (make-instance 'wax-app
              :state `(:outdir            ,(user-homedir)
                       :descripts-file    ,(appfile "_description_.lisp")
                       :sourcefile        ,(user-homedir)
                       :inject-doctemp    ,(appfile "Megrendelo.docx")
                       :inject-outfile-fn ,#'(lambda (obj row)
                                               (concatenate 'string
                                                (get-state obj :outdir)
                                                "Tanúsítvány megrendelõ - "
                                                (full-name row)))
                       :inject-descripts  nil
                       :inject-params     nil
                       :inject-sourcekey  :source
                       :inject-dump-fn    ,#'full-name
                       :inject-save-pdf   t)
              :execute-fn
              #'(lambda (obj)
                  ;; Loading description & parameters
                  (multiple-value-bind (params descripts)
                      (load-descriptions
                       (get-state obj :descripts-file))
                    (setf (get-state obj :inject-descripts) descripts
                          (get-state obj :inject-params) params))
                  ;; Adding & loading source spreadsheet
                  (add-data-source obj (get-state obj :inject-sourcekey)
                                   (get-state obj :sourcefile))
                  (load-data-source obj (get-state obj :inject-sourcekey)
                                    (getf (get-state obj :inject-params) :starting-row))
                  ;; Setting progress bar length
                  (setf (pstep-limit obj)
                        (xarray-actual-height
                         (source-data obj (get-state obj :inject-sourcekey))))
                  ;; Starting process
                  (inject::injection obj :greeting "Inicializálás...~%~%" :row-ids #'row-ids)
                  ;; Cleanup
                  (purge-data-source obj (get-state obj :inject-sourcekey))))))

    (load-state obj :keys *pkeys*)

    ;; GUI -------------------------------------------------------------------------------
    (wg-window "Tanúsítványigénylõk generálása" 80
      "Igénylés táblázat"
      (wg-file-selector
       "Igénylés táblázat"
       "*.xlsx" '("Excel fájlok" "*.xlsx" "Minden fájl" "*.*")
       #'(lambda (text &rest rest)
           (declare (ignore rest))
           (setf (get-state obj :sourcefile) text))
       (get-state obj :sourcefile))


      "Generált dokumentumok mappája"
      (wg-dir-selector
       "Generált dokumentumok mappája"
       #'(lambda (text &rest rest)
           (declare (ignore rest))
           (setf (get-state obj :outdir) text))
       (get-state obj :outdir))


      (wax::wg-checkbox
       "Mentés .PDF formátumban is"
       #'(lambda (data)
           (setf (get-state obj :inject-save-pdf) data))
       (get-state obj :inject-save-pdf))

      ""
      
      (wg-button "Indítás"
        #'(lambda (interface)
            (declare (ignore interface))
            (save-state obj :keys *pkeys*)
            (wax-execute obj :errorsink-on t))))))

;;;; -*- Mode: Common-Lisp; Author: denes.cselovszky@gmail.com -*- 
                                                                              ;

(in-package #:dfsig)


;; ----------------------------------------------------------------------
;; Global vars


(defparameter *outdir*        nil)
(defparameter *doc-template*  nil)
(defparameter *pdf-out*       nil)


;; ----------------------------------------------------------------------
;; Operation

(defun get-document (fullname)
  (com::get-object fullname :riid 'com::i-dispatch))


;;; Get the contents of the controlling spreadsheet.
(defun control-data (filename sheetname)
  (cclet* ((workbook   (get-document filename))
;           (worksheets ?('worksheets workbook))
;           (worksheet  ?('item worksheets sheetname))
           (worksheets (?worksheets workbook))
           (worksheet  (?item worksheets sheetname))
           (range      (used-range worksheet)))
;    ?('value2 range)))
    (?value2 range)))


;;; Return a single row of ARRAY.
(defun extract-row (array row)
  (let ((width (array-dimension array 1)))
    (make-array width
                :displaced-to array
                :displaced-index-offset (* width row))))


(defconstant +wd-replace-all+    2)
(defconstant +wd-find-continue+  1)
(defconstant +wd-format-pdf+    17)


;;; Replace text in Word doc.
(defun word-replace-text (find orig-text new-text)
  (!execute find orig-text nil nil nil nil nil t +wd-find-continue+ nil new-text))


;;; Non-permitted characters in a file name.
(defparameter *invalid-chars*
  '(#\/ #\< #\> #\" #\| #\? #\*))


;;; Check if filename is valid.
(defun validate-outfile (filename dump-text)
  (cond
   ;; Filename too long.
   ((> (length filename) 259)
    (progn
      (funcall dump-text (format nil "--> Kiemeneti fájlnév túl hosszú, ~a karakter! (~a) <--~%"
                                 (length filename) filename))
      nil))
   ;; Invalid character.
   ((find-if #'identity
             (mapcar #'(lambda (char)
                         (find char filename))
                     *invalid-chars*))
    (progn
      (funcall dump-text (format nil "--> Kiemeneti fájlnév illegális karaktert tartalmaz. (~a) <--~%"
                                 filename))
      nil))
   (t t)))


;;; Create document. Return NIL if filename was too long, otherwise return non-NIL.
(defun document (control filename-column documents dump-text)
  (let* ((outfile-raw  (concatenate 'string *outdir* (aref control filename-column)))
         (outfile-docx (concatenate 'string outfile-raw ".docx"))
         (outfile-pdf  (concatenate 'string outfile-raw ".pdf")))
    ;; If OUTFILE-DOCX is a valid filename:
    (when (validate-outfile outfile-docx dump-text)
      (cclet* ((document  (!open documents *doc-template*))
;               (find      ?('find ?('content document))))
               (find      (?find (?content document))))
        ;; Loop over the columns of the control array, perform replace operations in the document content.
        (loop for col from 0 below (array-dimension control 0) doing
              (word-replace-text find 
;                                 (format nil "<~a>" (ccom:column (1+ col)))
                                 (format nil "<~a>" (column (1+ col)))
                                 (aref control col)))

; C:\Users\cselovszkid\docfctory\Szombathelyi_TK_köznevelési intézmények_ell.xlsx
        ;; Loop over shapes
;        (cclet* ((shapes ?('shapes document))
;                 (scount ?('count shapes)))
        (cclet* ((shapes (?shapes document))
                 (scount (?count shapes)))
          (loop for i from 1 upto scount doing
                (cclet* ((shape (!item shapes i))
#|                         (frame ?('textframe shape))
                         (has   ?('hastext frame))
                         (range (unless (zerop has) ?('textrange frame)))
                         (find  (when range ?('find range))))|#
                         (frame (?textframe shape))
                         (has   (?hastext frame))
                         (range (unless (zerop has) (?textrange frame)))
                         (find  (when range (?find range))))
                  (when find
                    (loop for col from 0 below (array-dimension control 0) doing
                          (word-replace-text find 
;                                             (format nil "<~a>" (ccom:column (1+ col)))
                                             (format nil "<~a>" (column (1+ col)))
                                             (aref control col)))))))

        
        ;; Save resulting document with new name as DOCX.
        (!saveas2 document outfile-docx)
        (funcall dump-text (format nil "~a elmentve.~%" outfile-docx))
        ;; Also save it as PDF, if needed.
        (when *pdf-out*
          (!saveas2 document outfile-pdf +wd-format-pdf+)
          (funcall dump-text (format nil "~a elmentve.~%" outfile-pdf)))
        ;; Close modified template.
        (!close document nil)
        ;; Signal to the caller that validation passed.
        t))))


;;; Main functionality.
(defun docfctory (control-book control-sheet filename-column dump-text progress)
  (with-com-initialized
    (let* ((control  (control-data control-book control-sheet))
           (last-row (array-dimension control 0)))
      ;; Create a Word object (to speed up processing.
;      (cclet* ((documents   ?('documents (com:create-object :progid "Word.Application")))
      (cclet* ((documents   (?documents (com:create-object :progid "Word.Application")))
               (error-count 0))
        ;; Loop over rows of the control array.
        (loop for row from 1 below last-row
              for doc-control = (extract-row control row)
              doing (progn
                      ;; If document processing yields invalid filename, increase error counter.
                      (unless (document doc-control filename-column documents dump-text)
                        (incf error-count))
                      ;; Move the progress bar.
                      (funcall progress (* 100 (/ row (1- last-row))))))
        ;; If there were errors, make a special comment.
        (unless (zerop error-count)
          (funcall dump-text (format nil "Sikertelen mentések száma: ~a~%" error-count))))))
  ;; Process ends.
  (funcall dump-text (format nil "Mûvelet vége.~%")))




;; ----------------------------------------------------------------------
;; Sandbox


#|(defun extract-row-binds (row columns)
  (mapcar #'(lambda (column)
              (xcref row column))
          columns))|#
#|  (let ((results (loop for (k v) on binds by #'cddr collecting
                       (list k (xcref row v)))))
    (apply #'nconc results)))|#
#|(defmacro row-binds (arglist &body body)
  (let ((clauses (loop for (key val) on plist by #'cddr collecting
                       (list (intern (symbol-name key))
                             val))))
    `(let ,clauses
       ,@body)))|#


(defun act-on-description (description row document)
  (destructuring-bind (&key target row-args extra-args generator injector &allow-other-keys)
      description
    (let ((row-args* (mapcar #'(lambda (column) (xcref row column)) row-args)))
      (flet ((evalfn (lambda) (eval `(function ,lambda))))
        (funcall (evalfn injector) document target
                 (apply (evalfn generator)
                        (append row-args* extra-args)))))))


(defparameter *fff* "c:\\Users\\cselovszkid\\common-lisp\\dfsig\\Tanúsítványigénylés_TK neve.xlsx")
(defparameter *dt* "c:\\Users\\cselovszkid\\common-lisp\\dfsig\\Megrendelo_2_9-1_feloldott.docx")
(defparameter *out* "c:\\Users\\cselovszkid\\common-lisp\\dfsig\\grrr.docx")
(defparameter *f* "c:\\Users\\cselovszkid\\common-lisp\\dfsig\\tanusitvany-megrendelo.lisp")


(defun set-formfield (doc label value)
  (setf (?result (!item (?formfields doc) label))
        value))


(defun set-checkbox (doc label value)
  (setf (?value (?checkbox (!item (?formfields doc) label)))
        (and value t)))


(defun select-bookmark (document bookmark &key (if-not-found :skip))
  (cclet* ((item (!item (?bookmarks document) bookmark)))
;    (print (?name item))
    (!select item)
    (?selection (?activewindow document))))




#|  (multiple-value-bind (value error)
      (ignore-errors
        (cclet* ((item (!item (?bookmarks document) bookmark)))
        
          (print (?name item))
          (!select item)
          (?selection (?activewindow document))
          ))
    (case if-not-found
      (:skip  value)
      (:error (if (not error)
                value
                (error error)))
      (t      (error ":IF-NO-FOUND should be either :SKIP or :ERROR.")))))|#


(defun set-bookmark (document bookmark string &key (if-not-found :error))
  ;; TYPETEXT will not overwrite selection if the new string is ""...
  (cclet* ((notnull (if (string= string "") " " string))
           (select  (select-bookmark document bookmark :if-not-found if-not-found)))
    (when select
      (!typetext select notnull)
      (when (string= string "")
        (!typebackspace select)))
    ))


(defun testx (descriptions)
  (with-property-accessors
    (setf (property-accessors-on) t)
    (let ((obj (make-instance 'wax:wax-script))
          (row nil))
      (wax:add-data-source obj :input *fff*)
      (wax:load-data-source obj :input 2)
      (setf row (wax:source-data obj :input))
      (with-document (:doc doc :open *dt* :save nil :close t)
        (!saveas doc *out*)
        (unwind-protect 
            (dolist (description descriptions)
              (act-on-description description row doc))
          (!save doc))))))
;; köv lépés: a ROW legyen param és egy másik fn-bõl ciklusban hívjuk ezt


(defun testy ()
  (let ((descriptions (with-open-file (file *f* :direction :input :external-format :default)
                        (read file))))
    (testx descriptions)))
















(defparameter *formfield-types*
  '((-1 "wdFieldEmpty: Empty field. Acts as a placeholder for field content that has not yet been added. A field added by pressing Ctrl+F9 in the user interface is an Empty field.")
    (3 "wdFieldRef: Ref field.")
    (4 "wdFieldIndexEntry: XE (Index Entry) field.")
    (5 "wdFieldFootnoteRef: FootnoteRef field. Not available through the Field dialog box. Inserted programmatically or interactively.")
    (6 "wdFieldSet: Set field.")
    (7 "wdFieldIf: If field.")
    (8 "wdFieldIndex: Index field.")
    (9 "wdFieldTOCEntry: TOC (Table of Contents Entry) field.")
    (10 "wdFieldStyleRef: StyleRef field.")
    (11 "wdFieldRefDoc: RD (Reference Document) field.")
    (12 "wdFieldSequence: Seq (Sequence) field.")
    (13 "wdFieldTOC: TOC (Table of Contents) field.")
    (14 "wdFieldInfo: Info field.")
    (15 "wdFieldTitle: Title field.")
    (16 "wdFieldSubject: Subject field.")
    (17 "wdFieldAuthor: Author field.")
    (18 "wdFieldKeyWord: Keywords field.")
    (19 "wdFieldComments: Comments field.")
    (20 "wdFieldLastSavedBy: LastSavedBy field.")
    (21 "wdFieldCreateDate: CreateDate field.")
    (22 "wdFieldSaveDate: SaveDate field.")
    (23 "wdFieldPrintDate: PrintDate field.")
    (24 "wdFieldRevisionNum: RevNum field.")
    (25 "wdFieldEditTime: EditTime field.")
    (26 "wdFieldNumPages: NumPages field.")
    (27 "wdFieldNumWords: NumWords field.")
    (28 "wdFieldNumChars: NumChars field.")
    (29 "wdFieldFileName: FileName field.")
    (30 "wdFieldTemplate: Template field.")
    (31 "wdFieldDate: Date field.")
    (32 "wdFieldTime: Time field.")
    (33 "wdFieldPage: Page field.")
    (34 "wdFieldExpression: = (Formula) field.")
    (35 "wdFieldQuote: Quote field.")
    (36 "wdFieldInclude: Include field. Cannot be added through the Field dialog box, but can be added interactively or through code.")
    (37 "wdFieldPageRef: PageRef field.")
    (38 "wdFieldAsk: Ask field.")
    (39 "wdFieldFillIn: Fill-In field.")
    (40 "wdFieldData: Data field.")
    (41 "wdFieldNext: Next field.")
    (42 "wdFieldNextIf: NextIf field.")
    (43 "wdFieldSkipIf: SkipIf field.")
    (44 "wdFieldMergeRec: MergeRec field.")
    (45 "wdFieldDDE: DDE field. No longer available through the Field dialog box, but supported for documents created in earlier versions of Word.")
    (46 "wdFieldDDEAuto: DDEAuto field. No longer available through the Field dialog box, but supported for documents created in earlier versions of Word.")
    (47 "wdFieldGlossary: Glossary field. No longer supported in Word.")
    (48 "wdFieldPrint: Print field.")
    (49 "wdFieldFormula: EQ (Equation) field.")
    (50 "wdFieldGoToButton: GoToButton field.")
    (51 "wdFieldMacroButton: MacroButton field.")
    (52 "wdFieldAutoNumOutline: AutoNumOut field.")
    (53 "wdFieldAutoNumLegal: AutoNumLgl field.")
    (54 "wdFieldAutoNum: AutoNum field.")
    (55 "wdFieldImport: Import field. Cannot be added through the Field dialog box, but can be added interactively or through code.")
    (56 "wdFieldLink: Link field.")
    (57 "wdFieldSymbol: Symbol field.")
    (58 "wdFieldEmbed: Embedded field.")
    (59 "wdFieldMergeField: MergeField field.")
    (60 "wdFieldUserName: UserName field.")
    (61 "wdFieldUserInitials: UserInitials field.")
    (62 "wdFieldUserAddress: UserAddress field.")
    (63 "wdFieldBarCode: BarCode field.")
    (64 "wdFieldDocVariable: DocVariable field.")
    (65 "wdFieldSection: Section field.")
    (66 "wdFieldSectionPages: SectionPages field.")
    (67 "wdFieldIncludePicture: IncludePicture field.")
    (68 "wdFieldIncludeText: IncludeText field.")
    (69 "wdFieldFileSize: FileSize field.")
    (70 "wdFieldFormTextInput: FormText field.")
    (71 "wdFieldFormCheckBox: FormCheckBox field.")
    (72 "wdFieldNoteRef: NoteRef field.")
    (73 "wdFieldTOA: TOA (Table of Authorities) field.")
    (74 "wdFieldTOAEntry: TOA (Table of Authorities Entry) field.")
    (75 "wdFieldMergeSeq: MergeSeq field.")
    (77 "wdFieldPrivate: Private field.")
    (78 "wdFieldDatabase: Database field.")
    (79 "wdFieldAutoText: AutoText field.")
    (80 "wdFieldCompare: Compare field.")
    (81 "wdFieldAddin: Add-in field. Not available through the Field dialog box. Used to store data that is hidden from the user interface.")
    (82 "wdFieldSubscriber: Macintosh only. For information about this constant, consult the language reference Help included with Microsoft Office Macintosh Edition.")
    (83 "wdFieldFormDropDown: FormDropDown field.")
    (84 "wdFieldAdvance: Advance field.")
    (85 "wdFieldDocProperty: DocProperty field.")
    (87 "wdFieldOCX: OCX field. Cannot be added through the Field dialog box, but can be added through code by using the AddOLEControl method of the Shapes collection or of the InlineShapes collection.")
    (88 "wdFieldHyperlink: Hyperlink field.")
    (89 "wdFieldAutoTextList: AutoTextList field.")
    (90 "wdFieldListNum: ListNum field.")
    (91 "wdFieldHTMLActiveX: HTMLActiveX field. Not currently supported.")
    (92 "wdFieldBidiOutline: BidiOutline field.")
    (93 "wdFieldAddressBlock: AddressBlock field.")
    (94 "wdFieldGreetingLine: GreetingLine field.")
    (95 "wdFieldShape: Shape field. Automatically created for any drawn picture.")
    (96 "wdFieldCitation: Citation field.")
    (97 "wdFieldBibliography: Bibliography field.")
    (98 "wdFieldMergeBarcode: MergeBarcode field.")
    (99 "wdFieldDisplayBarcode: DisplayBarcode field.")))


(defun list-formfields (docfile)
  (with-property-accessors
    (setf (property-accessors-on) t)
      (with-document (:doc doc :open docfile :save nil :close t)
        (cclet* ((formfields (?formfields doc)))
          (loop for i from 1 upto (?count formfields) doing
                (cclet* ((formfield (!item formfields i)))
                  (format t "Number: ~a; Name: ~a; Type: ~a; Enabled: ~a~%" i
                          (?name formfield)
                          (second (assoc (?type formfield)
                                         *formfield-types*))
                          (?enabled formfield))))))))


(defun list-bookmarks (docfile)
  (with-property-accessors
    (setf (property-accessors-on) t)
      (with-document (:doc doc :open docfile :save nil :close t)
        (cclet* ((bookmarks (?bookmarks doc)))
          (loop for i from 1 upto (?count bookmarks) doing
                (cclet* ((bookmark (!item bookmarks i)))
                  (format t "Number: ~a; Name: ~a~%" i
                          (?name bookmark))))))))

;;; Feloldott Megrendelo_2_9-1.docx kitöltésének leírása




(


 ;; (2) Nyilatkozat ("A fent megjelölt ...")
 (:target     "Jelölő24"
  :row-binds  (:a 25)
  :generator  (lambda (value)
                (string= value "Vezetői engedély"))
  :injector   set-checkbox
  )

 
 ;; (3) Szervezet neve
 (:target     "Szöveg11"
  :row-binds  (:a 8 :b 28)
  :extra-args (:a 1 :b 2)
  :generator  (lambda (list)
                (format nil "~{~a~^ ~}" list))
  :injector   set-formfield
  )


 )

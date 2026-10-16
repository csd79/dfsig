;;;; Feloldott Aláíró_bélyegõ_megrendelo_3_1.docx kitöltésének leírása
;;;; ISO 8859-2, CR LF





;;; Parameters ---------------------------------------------------

(:first-row 4 :header-row 2)





;;; Descriptions -------------------------------------------------

(
 
 
 (
  :field      "(1) Munkatársi (üzleti) aláíró tanúsítvány"
  :targets    (1)
  :row-args   ()
  :literals   (t)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1) Szervezeti bélyegzõ tanúsítvány"
  :targets    (2)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 

 (
  :field      "(1.2) E-ügyintézés célú tanúsítvány"
  :targets    (3)
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type)
                (member type '("E-ügyintézés célú (kiadmányozói)"
                               "E-ügyintézés célú (ügyintézõi)")
                        :test #'string=))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.2) Általános célú tanúsítvány"
  :targets    (4)
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "Általános célú"))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.3) Ügyintézésben közremûködõ ügyintézõ"
  :targets    (5)
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "E-ügyintézés célú (ügyintézõi)"))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.3) Ügyintézést biztosító szerv nevében történõ kiadmányozást végzõ"
  :targets    (6)
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "E-ügyintézés célú (kiadmányozói)"))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.4) USB token (QSCD)"
  :targets    (7)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.4) Chipkártya (QSCD)"
  :targets    (8)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.4) Chipkártya olvasó"
  :targets    (9)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.4) CD"
  :targets    (10)
  :row-args   ()
  :literals   (t)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.4) Helyszíni átadást kérek"
  :targets    (11)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.4) Az igényhez PKCS10 kérés kapcsolódik"
  :targets    (12)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(2) Szervezeti jogosultság és a tanúsítvány igénybevételi célja"
  :targets    (13)
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type)
                (member type '("E-ügyintézés célú (kiadmányozói)"
                               "E-ügyintézés célú (ügyintézõi)")
                        :test #'string=))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(3) Szervezet neve"
  :targets    (14)
  :row-args   (1)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) Adószám"
  :targets    (15)
  :row-args   (2)
  :literals   ()
  :plist-keys ()
  :generator  taxid
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) Ha van közösségi, akkor az jelenjen meg tanúsítványban"
  :targets    (16)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(3) Bankszámlaszám"
  :targets    (17)
  :row-args   (3)
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) Irányítószám"
  :targets    (18)
  :row-args   (4)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value) (parse-string/ (round (parse-number value))))
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) Település"
  :targets    (19)
  :row-args   (5)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) Közterület neve, házszám"
  :targets    (20)
  :row-args   (6)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )


 (
  :field      "(3) Telefon"
  :targets    (22)
  :row-args   (7)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value)
                (subseq (fix-phone-number value) 4))
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) E-mail cím"
  :targets    (23)
  :row-args   (8)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(5) Név*"
  :targets    (33)
  :row-args   (10)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
(
  :field      "(5) Név"
  :targets    (34)
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
  (
  :field      "(5) Beosztás*"
  :targets    (35)
  :row-args   (11)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(5) Beosztás"
  :targets    (36)
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )

 
 (
  :field      "(6) A tanúsítványban megjelenjen?"
  :targets    (37)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
;  :generator  (lambda (value)
;                (not (or (ccoffice:empty-cell-p value)
;                         (string= value ""))))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(6) Beosztás (??)"
  :targets    (38)
  :row-args   ()
;  :row-args   (9)
  :literals   ("")
  :plist-keys ()
;  :generator  clean-string
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Viselt családnév"
  :targets    (39)
  :row-args   (12)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Viselt utónév 1"
  :targets    (40)
  :row-args   (13)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Viselt utónév 2"
  :targets    (41)
  :row-args   (14)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési családnév"
  :targets    (42)
  :row-args   (15)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési utónév 1"
  :targets    (43)
  :row-args   (16)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési utónév 2"
  :targets    (44)
  :row-args   (17)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Anyja születési családneve"
  :targets    (45)
  :row-args   (18)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Anyja születési utóneve 1"
  :targets    (46)
  :row-args   (19)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Anyja születési utóneve 2"
  :targets    (47)
  :row-args   (20)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési hely"
  :targets    (48)
  :row-args   (21 22)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (country settlement)
                (clean-string
                  (concatenate 'string country ", " settlement)))
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési dátum"
  :targets    (49)
  :row-args   (23)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (val)
                (cond ((stringp val) val)
                      ((numberp val)
                       (subseq (excel-date-string val) 0 10))
                      (t "")))
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Beosztás"
  :targets    (50)
  :row-args   (24)
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  :field      "(7.2) A tanúsítványban megjelenjen?"
  :targets    (51)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )

 
 (
  :field      "(7.2) Személyazonosító ig."
  :targets    (52)
  :row-args   (25)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (id-number)
                (let ((str (string-upcase (clean-string (format nil "~a" id-number)))))
                  (not (<= 65 (char-code (elt str 0)) 90))))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(7.2) Útlevél"
  :targets    (53)
  :row-args   (25)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (id-number)
                (let ((str (string-upcase (clean-string (format nil "~a" id-number)))))
                  (and (<= 65 (char-code (elt str 0)) 90)
                       (= (length str) 9))))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(7.2) Vezetõi engedély"
  :targets    (54)
  :row-args   (25)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (id-number)
                (let ((str (string-upcase (clean-string (format nil "~a" id-number)))))
                  (and (<= 65 (char-code (elt str 0)) 90)
                       (/= (length str) 9))))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(7.2) Igazolvány száma"
  :targets    (55)
  :row-args   (25)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (id-number)
                (string-upcase (clean-string (format nil "~a" id-number))))
  :injector   set-formfield
  )
 
 
 (
  :field      "(7.3) E-mail"
  :targets    (56)
  :row-args   (27)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )


 (
  :field      "(7.2) Telefon"
  :targets    (58)
  :row-args   (26)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value)
                (subseq (fix-phone-number value) 4))
  :injector   set-formfield
  )
 
 
(
  :field      "(8.1) Alany neve"
  :targets    (59)
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  :field      "(8.2) Tanúsítványban megjelenõ e-mail cím"
  :targets    (60)
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 

 (
  :field      "Kelt hely"
  :targets    (61)
  :row-args   (5)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )

  
 (
  :field      "Kelt dátum"
  :targets    (62)
  :row-args   ()
  :literals   ("elektronikus idõbélyegzõ szerint")
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 

 (
  :field      "Kelt hely"
  :targets    (63)
  :row-args   (5)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )

  
 (
  :field      "Kelt dátum"
  :targets    (64)
  :row-args   ()
  :literals   ("elektronikus idõbélyegzõ szerint")
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )


)

;;;; Feloldott Megrendelo_3_0_minositett.docx kitöltésének leírása
;;;; ISO 8859-2, CR LF





;;; Parameters ---------------------------------------------------

(:starting-row 3 :header-row 1)





;;; Descriptions -------------------------------------------------

(
 
 
 (
  :field      "(1) Munkatársi (üzleti) aláíró tanúsítvány"
  :target     (1)
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
  :field      "(1) Eszköz bélyegzõ tanúsítvány"
  :targets    (3)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.2) E-ügyintézés célú tanúsítvány (KET, KGyHSz)"
  :targets    (4)
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
  :targets    (5)
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "Általános célú"))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.3) Ügyintézésben közremûködõ ügyintézõ"
  :targets    (6)
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "E-ügyintézés célú (ügyintézõi)"))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.3) Ügyintézést biztosító szerv nevében történõ kiadmányozást végzõ"
  :targets    (7)
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "E-ügyintézés célú (kiadmányozói)"))
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.3) Ügyintézést biztosító szerv vagy annak szervezeti egysége (szervezeti bélyegzõ tanúsítvány)"
  :targets    (8)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.3) Ügyintézést biztosító szerv által mûködtetett informatikai eszköz (eszköz bélyegzõ tanúsítvány)"
  :targets    (9)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.4) 0 Ft"
  :targets    (10)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.4) 1 000 000 Ft"
  :targets    (11)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.4) 20 000 000 Ft"
  :targets    (12)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.4) 200 000 000 Ft"
  :targets    (13)
  :row-args   ()
  :literals   (t)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.5) A tanúsítvány RSA algoritmussal kerüljön kiállításra"
  :targets    (14)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.6) USB token (QSCD)"
  :targets    (14)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.6) Chipkártya (QSCD)"
  :targets    (15)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.6) Chipkártya olvasó"
  :targets    (16)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.6) CD"
  :targets    (17)
  :row-args   ()
  :literals   (t)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.6) Helyszíni átadást kérek"
  :targets    (19)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(1.6) Az igényhez PKCS10 kérés kapcsolódik"
  :targets    (18)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(2) Nyilatkozat (A fent megjelölt tanúsítvány(oka)t a..)"
  :targets    (20)
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
  :targets    (21)
  :row-args   (1)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) Adószám"
  :targets    (22)
  :row-args   (2)
  :literals   ()
  :plist-keys ()
;  :generator  (lambda (value) (parse-string (round (parse-taxid value))))
  :generator  taxid
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) Ha van közösségi, akkor az jelenjen meg tanúsítványban"
  :targets    (23)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  :field      "(3) Bankszámlaszám"
  :targets    (24)
  :row-args   (3)
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) Irányítószám"
  :targets    (25)
  :row-args   (4)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value) (parse-string (round (parse-number value))))
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) Település"
  :targets    (26)
  :row-args   (5)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) Közterület neve, házszám"
  :targets    (27)
  :row-args   (6)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )


 (
  :field      "(3) Telefon"
  :targets    (29)
  :row-args   (7)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value)
                (subseq (fix-phone-number value) 4))
  :injector   set-formfield
  )
 
 
 (
  :field      "(3) E-mail cím"
  :targets    (30)
  :row-args   (8)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 

 (
  :field      "(5) A tanúsítványban megjelenjen?"
  :targets    (40)
  :row-args   (9)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value)
                (not (or (ccoffice:empty-cell-p value)
                         (string= value ""))))
  :injector   set-checkbox
  )

 
 (
  :field      "(5) Szervezeti egység neve"
  :targets    (41)
  :row-args   (9)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(6) Név*"
  :targets    (42)
  :row-args   (10)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(6) Beosztás*"
  :targets    (44)
  :row-args   (11)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 

 (
  :field      "(6) Név"
  :targets    (43)
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  :field      "(6) Beosztás"
  :targets    (45)
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )

 
 (
  :field      "(7) Viselt családnév"
  :targets    (46)
  :row-args   (12)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Viselt utónév 1"
  :targets    (47)
  :row-args   (13)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Viselt utónév 2"
  :targets    (48)
  :row-args   (14)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési családnév"
  :targets    (49)
  :row-args   (15)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési utónév 1"
  :targets    (50)
  :row-args   (16)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési utónév 2"
  :targets    (51)
  :row-args   (17)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Anyja születési családneve"
  :targets    (52)
  :row-args   (18)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Anyja születési utóneve 1"
  :targets    (53)
  :row-args   (19)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Anyja születési utóneve 2"
  :targets    (54)
  :row-args   (20)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési ország"
  :targets    (55)
  :row-args   (21)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési hely"
  :targets    (56)
  :row-args   (22)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  :field      "(7) Születési dátum"
  :targets    (57)
  :row-args   (23)
  :literals   ()
  :plist-keys ()
;  :generator  identity
  :generator  (lambda (val)
                (cond ((stringp val) val)
                      ((numberp val)
                       (subseq (excel-date-string val) 0 10))
                      (t "")))
  :injector   set-formfield
  )
 
 
 ;(
 ;:field       "(7.2) Beosztás"
 ; :targes     58
 ; :row-args   (24)
 ; :literals   ()
 ; :plist-keys ()
 ; :generator  clean-string
 ; :injector   set-formfield
 ; )
 

 (
  :field      "(7.2) A tanúsítványban megjelenjen?"
  :targets    (59)
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )

 
 (
  :field      "(7.2) Személyazonosító ig."
  :targets    (60)
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
  :targets    (61)
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
  :targets    (62)
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
  :targets    (63)
  :row-args   (25)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (id-number)
                (string-upcase (clean-string (format nil "~a" id-number))))
  :injector   set-formfield
  )


 (
  :field      "(7.2) Telefon"
  :targets    (65)
  :row-args   (26)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value)
                (subseq (fix-phone-number value) 4))
  :injector   set-formfield
  )
 
 
 (
  :field      "(7.3) E-mail"
  :targets    (66)
  :row-args   (27)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
(
  :field      "(8.1) Alany neve"
  :targets    (67)
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  :field      "(8.2) Tanúsítványban megjelenõ e-mail cím"
  :targets    (68)
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 

 (
  :field      "Kelt hely"
  :targets    (69)
  :row-args   (5)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )

  
 (
  :field      "Kelt dátum"
  :targets    (70)
  :row-args   ()
  :literals   ("elektronikus idõbélyegzõ szerint")
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )


)

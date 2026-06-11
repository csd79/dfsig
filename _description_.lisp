;;;; Feloldott Megrendelo_3_0_minositett.docx kitöltésének leírása
;;;; ISO 8859-2, CR LF





;;; Parameters ---------------------------------------------------

(:starting-row 3)





;;; Descriptions -------------------------------------------------

(
 
 
 (
  ;; "(1) Munkatársi (üzleti) aláíró tanúsítvány"
  :target     1
  :row-args   ()
  :literals   (t)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1) Szervezeti bélyegzõ tanúsítvány"
  :target     2
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 

 (
  ;; "(1) Eszköz bélyegzõ tanúsítvány"
  :target     3
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.2) E-ügyintézés célú tanúsítvány (KET, KGyHSz)"
  :target     4
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
  ;; "(1.2) Általános célú tanúsítvány"
  :target     5
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "Általános célú"))
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.3) Ügyintézésben közremûködõ ügyintézõ"
  :target     6
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "E-ügyintézés célú (ügyintézõi)"))
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.3) Ügyintézést biztosító szerv nevében történõ kiadmányozást végzõ"
  :target     7
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "E-ügyintézés célú (kiadmányozói)"))
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.3) Ügyintézést biztosító szerv vagy annak szervezeti egysége (szervezeti bélyegzõ tanúsítvány)"
  :target     8
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.3) Ügyintézést biztosító szerv által mûködtetett informatikai eszköz (eszköz bélyegzõ tanúsítvány)"
  :target     9
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.4) 0 Ft"
  :target     10
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.4) 1 000 000 Ft"
  :target     11
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.4) 20 000 000 Ft"
  :target     12
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.4) 200 000 000 Ft"
  :target     13
  :row-args   ()
  :literals   (t)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.5) A tanúsítvány RSA algoritmussal kerüljön kiállításra"
  :target     14
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) USB token (QSCD)"
  :target     14
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) Chipkártya (QSCD)"
  :target     15
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) Chipkártya olvasó"
  :target     16
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) CD"
  :target     17
  :row-args   ()
  :literals   (t)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) Helyszíni átadást kérek"
  :target     19
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) Az igényhez PKCS10 kérés kapcsolódik"
  :target     18
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(2) Nyilatkozat (A fent megjelölt tanúsítvány(oka)t a..)"
  :target     20
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
  ;; "(3) Szervezet neve"
  :target     21
  :row-args   (1)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(3) Adószám"
  :target     22
  :row-args   (2)
  :literals   ()
  :plist-keys ()
;  :generator  (lambda (value) (parse-string (round (parse-taxid value))))
  :generator  taxid
  :injector   set-formfield
  )
 
 
 (
  ;; "(3) Ha van közösségi, akkor az jelenjen meg tanúsítványban"
  :target     23
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(3) Bankszámlaszám"
  :target     24
  :row-args   (3)
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(3) Irányítószám"
  :target     25
  :row-args   (4)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value) (parse-string (round (parse-number value))))
  :injector   set-formfield
  )
 
 
 (
  ;; "(3) Település"
  :target     26
  :row-args   (5)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(3) Közterület neve, házszám"
  :target     27
  :row-args   (6)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )


 (
  ;; "(3) Telefon"
  :target     29
  :row-args   (7)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value)
                (subseq (fix-phone-number value) 4))
  :injector   set-formfield
  )
 
 
 (
  ;; "(3) E-mail cím"
  :target     30
  :row-args   (8)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 

 (
  ;; "(5) A tanúsítványban megjelenjen?"
  :target     40
  :row-args   (9)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value)
                (not (or (ccoffice:empty-cell-p value)
                         (string= value ""))))
  :injector   set-checkbox
  )

 
 (
  ;; "(5) Szervezeti egység neve"
  :target     41
  :row-args   (9)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(6) Név*"
  :target     42
  :row-args   (10)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(6) Beosztás*"
  :target     44
  :row-args   (11)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 

 (
  ;; "(6) Név"
  :target     43
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(6) Beosztás"
  :target     45
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )

 
 (
  ;; "(7) Viselt családnév"
  :target     46
  :row-args   (12)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Viselt utónév 1"
  :target     47
  :row-args   (13)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Viselt utónév 2"
  :target     48
  :row-args   (14)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési családnév"
  :target     49
  :row-args   (15)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési utónév 1"
  :target     50
  :row-args   (16)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési utónév 2"
  :target     51
  :row-args   (17)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Anyja születési családneve"
  :target     52
  :row-args   (18)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Anyja születési utóneve 1"
  :target     53
  :row-args   (19)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Anyja születési utóneve 2"
  :target     54
  :row-args   (20)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési ország"
  :target     55
  :row-args   (21)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési hely"
  :target     56
  :row-args   (22)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési dátum"
  :target     57
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
 ; ;; "(7.2) Beosztás"
 ; :target     58
 ; :row-args   (24)
 ; :literals   ()
 ; :plist-keys ()
 ; :generator  clean-string
 ; :injector   set-formfield
 ; )
 

 (
  ;; "(7.2) A tanúsítványban megjelenjen?"
  :target     59
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )

 
 (
  ;; "(7.2) Személyazonosító ig."
  :target     60
  :row-args   (25)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (id-number)
                (let ((str (string-upcase (clean-string (format nil "~a" id-number)))))
                  (not (<= 65 (char-code (elt str 0)) 90))))
  :injector   set-checkbox
  )
 
 
 (
  ;; "(7.2) Útlevél"
  :target     61
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
  ;; "(7.2) Vezetõi engedély"
  :target     62
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
  ;; "(7.2) Igazolvány száma"
  :target     63
  :row-args   (25)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (id-number)
                (string-upcase (clean-string (format nil "~a" id-number))))
  :injector   set-formfield
  )


 (
  ;; "(7.2) Telefon"
  :target     65
  :row-args   (26)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value)
                (subseq (fix-phone-number value) 4))
  :injector   set-formfield
  )
 
 
 (
  ;; "(7.3) E-mail"
  :target     66
  :row-args   (27)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
(
  ;; "(8.1) Alany neve"
  :target     67
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(8.2) Tanúsítványban megjelenõ e-mail cím"
  :target     68
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 

 (
  ;; "Kelt hely"
  :target     69
  :row-args   (5)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )

  
 (
  ;; "Kelt dátum"
  :target     70
  :row-args   ()
  :literals   ("elektronikus idõbélyegzõ szerint")
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )


)

;;; Feloldott Megrendelo_2_9-1.docx kitöltésének leírása
;;; ISO 8859-2, CR LF







(
 
 
 (
  ;; "(1) Munkatársi (üzleti) aláíró tanúsítvány"
;  :target     "Jelölõ6"
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
;  :target     "Jelölõ3"
  :target     3
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.2) E-ügyintézés célú tanúsítvány (KET, KGyHSz)"
  :target     "EugyintNegyzet"
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
  :target     "AltalanosNegyzet"
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "Általános célú"))
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.3) Ügyintézésben közremûködõ ügyintézõ"
  :target     "UgyintezoiNegyzet"
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "E-ügyintézés célú (ügyintézõi)"))
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.3) Ügyintézést biztosító szerv nevében történõ kiadmányozást végzõ"
  :target     "KiadmanyozoiNegyzet"
  :row-args   ()
  :literals   ("E-ügyintézés célú (kiadmányozói)")
  :plist-keys ()
  :generator  (lambda (type) (string= type "E-ügyintézés célú (kiadmányozói)"))
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.3) Ügyintézést biztosító szerv vagy annak szervezeti egysége (szervezeti bélyegzõ tanúsítvány)"
;  :target     "Jelölõ12"
  :target     8
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.3) Ügyintézést biztosító szerv által mûködtetett informatikai eszköz (eszköz bélyegzõ tanúsítvány)"
;  :target     "Jelölõ13"
  :target     9
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.4) 0 Ft"
  :target     "NullaNegyzet"
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.4) 1 000 000 Ft"
  :target     "EgyNegyzet"
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.4) 20 000 000 Ft"
  :target     "HuszNegyzet"
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.4) 200 000 000 Ft"
  :target     "KetszazNegyzet"
  :row-args   ()
  :literals   (t)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.5) A tanúsítvány RSA algoritmussal kerüljön kiállításra"
;  :target     "Jelölõ24"
  :target     14
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) USB token (QSCD)"
  :target     "USBTokenNegyzet"
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) Chipkártya (QSCD)"
  :target     "ChipkartyaNegyzet"
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) Chipkártya olvasó"
;  :target     "Jelölõ24"
  :target     17
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) CD"
  :target     "CDNegyzet"
  :row-args   ()
  :literals   (t)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) Helyszíni átadást kérek"
;  :target     "Jelölõ34"
  :target     19
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(1.6) Az igényhez PKCS10 kérés kapcsolódik"
;  :target     "Jelölõ34"
  :target     20
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(2) Nyilatkozat (A fent megjelölt tanúsítvány(oka)t a..)"
  :target     "NyilatkozatNegyzet"
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
  :target     "SzervezetNeve"
  :row-args   (1)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-bookmark
  )
 
 
 (
  ;; "(3) Adószám"
  :target     "Adoszam"
  :row-args   (2)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value) (parse-string (round (parse-number value))))
  :injector   set-bookmark
  )
 
 
 (
  ;; "(3) Ha van közösségi, akkor az jelenjen meg tanúsítványban"
;  :target     "Jelölõ33"
  :target     22
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )
 
 
 (
  ;; "(3) Bankszámlaszám"
  :target     "Bankszamlaszam"
  :row-args   (3)
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-bookmark
  )
 
 
 (
  ;; "(3) Irányítószám"
  :target     "Irszam"
  :row-args   (4)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value) (parse-string (round (parse-number value))))
  :injector   set-bookmark
  )
 
 
 (
  ;; "(3) Település"
  :target     "Telepules"
  :row-args   (5)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-bookmark
  )
 
 
 (
  ;; "(3) Közterület neve, házszám"
  :target     "Kozter"
  :row-args   (6)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-bookmark
  )


 (
  ;; "(3) Telefon"
  :target     "SzervTel"
;  :target     47
  :row-args   (7)
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-bookmark
  )
 
 
 (
  ;; "(3) E-mail cím"
  :target     "SzervEmail"
;  :target     12
  :row-args   (8)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-bookmark
  )
 

#| (
  ;; "(4) Név"
  :target     "Szöveg17"
  :row-args   ()
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(4) Adószám"
  :target     "Szöveg18"
  :row-args   ()
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(4) Bankszámlaszám"
  :target     ""
  :row-args   ()
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(4) Irányítószám"
  :target     "Szöveg19"
  :row-args   ()
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(4) Település"
  :target     ""
  :row-args   ()
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(4) Közterület neve, házszám"
  :target     "Szöveg21"
  :row-args   ()
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(4) Telefon"
  :target     "Szöveg10"
  :row-args   ()
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(4) E-mail"
  :target     "Szöveg22"
  :row-args   ()
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )|#
 

 (
  ;; "(5) A tanúsítványban megjelenjen?"
  :target     "SzervEgysNegyzet"
  :row-args   (9)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (value)
                (not (or (msoffice:empty-cell-p value)
                         (string= value ""))))
  :injector   set-checkbox
  )

 
 (
  ;; "(5) Szervezeti egység neve"
  :target     "SzervezetEgyseg"
  :row-args   (9)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-bookmark
  )
 
 
 (
  ;; "(6) Név*"
  :target     "KepvJogNev"
  :row-args   (10)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-bookmark
  )
 
 
 (
  ;; "(6) Beosztás*"
  :target     "KepvJogBeoszt"
  :row-args   (11)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-bookmark
  )
 

 (
  ;; "(6) Név"
  :target     "Kepvis2"
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(6) Beosztás"
  :target     "Szöveg61"
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )

 
 (
  ;; "(7) Viselt családnév"
  :target     "VisCsNev"
  :row-args   (12)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Viselt utónév 1"
  :target     "VisUtNev1"
  :row-args   (13)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Viselt utónév 2"
  :target     "VisUtNev2"
  :row-args   (14)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési családnév"
  :target     "SzulCsNev"
  :row-args   (15)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési utónév 1"
  :target     "SzulUtNev1"
  :row-args   (16)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési utónév 2"
  :target     "SzulUtNev2"
  :row-args   (17)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Anyja születési családneve"
  :target     "AnyjaCsNev"
  :row-args   (18)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Anyja születési utóneve 1"
  :target     "AnyjaUtNev1"
  :row-args   (19)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Anyja születési utóneve 2"
  :target     "AnyjaUtNev2"
  :row-args   (20)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési ország"
  :target     "SzulOrsz"
  :row-args   (21)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési hely"
  :target     "SzulHely"
  :row-args   (22)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7) Születési dátum"
  :target     "SzulDatum"
  :row-args   (23)
  :literals   ()
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(7.2) Beosztás"
  :target     "Beosztas"
  :row-args   (24)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 

 (
  ;; "(7.2) A tanúsítványban megjelenjen?"
  :target     "BeosztNegyzet"
  :row-args   ()
  :literals   (nil)
  :plist-keys ()
  :generator  identity
  :injector   set-checkbox
  )

 
 (
  ;; "(7.2) Személyazonosító ig."
  :target     "SzigNegyzet"
  :row-args   (26)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (id-number)
                (let ((str (string-upcase (clean-string (format nil "~a" id-number)))))
                  (not (<= 65 (char-code (elt str 0)) 90))))
  :injector   set-checkbox
  )
 
 
 (
  ;; "(7.2) Útlevél"
  :target     "UtlevelNegyzet"
  :row-args   (26)
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
  :target     "VezengNegyzet"
  :row-args   (26)
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
  :target     "Igszam"
  :row-args   (26)
  :literals   ()
  :plist-keys ()
  :generator  (lambda (id-number)
                (string-upcase (clean-string (format nil "~a" id-number))))
  :injector   set-formfield
  )


 (
  ;; "(7.2) Telefon"
  :target     "Telefon"
  :row-args   (27)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
 (
  ;; "(7.3) E-mail"
  :target     "Email"
  :row-args   (28)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )
 
 
(
  ;; "(8.1) Alany neve"
  :target     "Szöveg48"
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 
 
 (
  ;; "(8.2) Tanúsítványban megjelenõ e-mail cím"
  :target     "Szöveg48"
  :row-args   ()
  :literals   ("")
  :plist-keys ()
  :generator  identity
  :injector   set-formfield
  )
 

 (
  ;; "Kelt hely"
  :target     "Szöveg56"
  :row-args   (5)
  :literals   ()
  :plist-keys ()
  :generator  clean-string
  :injector   set-formfield
  )

  
 (
  ;; "Kelt dátum"
  :target     "Szöveg57"
  :row-args   ()
  :literals   ("idõbélyegzõ szerint")
  :plist-keys ()
  :generator  clean-string
;  :injector   set-formfield
  :injector   set-bookmark
  )


)

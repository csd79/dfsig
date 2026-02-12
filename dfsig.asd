(defsystem "dfsig"
  :description "Doc generator for sig"
  :author      "Denes Cselovszki <denes.cselovszki@gmail.com>"
  :version     "0.13"
  :depends-on  ("ccom3" "msoffice" "inject" "wax")
  :serial      t
  :components  ((:file "package")
                (:file "fli-templates")
                (:file "dfsig")))

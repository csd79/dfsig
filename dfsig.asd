(defsystem "dfsig"
  :description "Doc generator for sig"
  :author      "Denes Cselovszki <denes.cselovszki@gmail.com>"
  :version     "0.16"
  :depends-on  ("ccom4" "ccoffice" "inject" "wax")
  :serial      t
  :components  ((:file "package")
                (:file "fli-templates")
                (:file "dfsig")))

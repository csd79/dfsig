(defsystem "dfsig"
  :description "Doc generator for sig"
  :author      "Denes Cselovszki <denes.cselovszki@gmail.com>"
  :version     "0.09"
  :depends-on  ("ccom3" "msoffice" "wax")
  :serial      t
  :components  ((:file "package")
                (:file "fli-templates")
                (:file "util")
                (:file "dfsig")
                (:file "main-gui")
                (:file "running-gui")))

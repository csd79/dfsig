;;; -*- Mode: Common-Lisp; Author: denes.cselovszky@gmail.com -*- 

(in-package "CL-USER")

(load "c:\\Users\\cselovszkid\\.lispworks")

(asdf:load-system "dfsig")

(lw:deliver 'dfsig:start
    "c:\\Users\\cselovszkid\\common-lisp\\dfsig\\dfsig.exe"
    5
    :interface :capi
    :console :io
    :multiprocessing t
;    :icon-file "c:\\Users\\cselovszkid\\common-lisp\\docfctory\\Gutenberg.ico"
    :error-on-interpreted-functions t
    :keep-eval t
    :keep-lisp-reader t
    :symbol-names-action nil
    :startup-bitmap-file nil
    :kill-dspec-table nil)

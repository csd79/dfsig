;;; -*- Mode: Common-Lisp; Author: denes.cselovszky@gmail.com -*- 

(in-package "CL-USER")

(load "c:\\Users\\cselovszkid\\.lispworks")

(asdf:load-system "dfsig")

(in-package "DFSIG")
(setf *independent-exe* t)

(lw:deliver 'dfsig:start
    "c:\\Users\\cselovszkid\\common-lisp\\dfsig\\dfsig_v0.10.exe"
    1 ; on higher opt levels it won't even start ('Illegal path...")
    :interface :capi
    :console :io
    :multiprocessing t
;    :icon-file "c:\\Users\\cselovszkid\\common-lisp\\docfctory\\Gutenberg.ico"

    :keep-package-manipulation t
    :keep-function-name :all
    :keep-eval t
    :keep-lisp-reader t
    :symbol-names-action nil
    :startup-bitmap-file nil
    :kill-dspec-table nil
    :keep-conditions :all
    :keep-debug-mode t
    :keep-load-function t

    :compact t
)

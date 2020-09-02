(defmodule goldy-app
  (behaviour gen_server)
  (export
    ;; app implementation
    (start 2)
    (stop 0)))

;;; --------------------------
;;; application implementation
;;; --------------------------

(defun start (_type _args)
  (logger:set_application_level 'goldy 'all)
  (logger:info "Starting goldy application ...")
  (goldy-sup:start_link))

(defun stop ()
  (goldy-sup:stop)
  'ok)

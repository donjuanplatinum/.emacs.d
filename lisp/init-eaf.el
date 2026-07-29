(use-package eaf
:load-path "~/.emacs.d/site-lisp/emacs-application-framework"
;; :custom
;; (eaf-browser-continue-where-left-off t)
;; (eaf-browser-enable-adblocker t)
;; (browse-url-browser-function 'eaf-open-browser)
;; :config
;; (defalias 'browse-web #'eaf-open-browser)
;; (eaf-bind-key nil "M-q" eaf-browser-keybinding)
)

(require 'eaf-browser)

(provide 'init-eaf)

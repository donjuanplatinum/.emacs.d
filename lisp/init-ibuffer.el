;;ibuffer
(global-unset-key (kbd "C-x C-b"))
(global-set-key (kbd "C-x C-b") 'ibuffer)
;不显示空组
(setq ibuffer-show-empty-filter-groups nil)


(setq ibuffer-saved-filter-groups
'(("ibuffer"
      ("matrix"
       (name . "Ement*"))
      ("irc query"
       (used-mode . circe-query-mode))
      ("dired"
       (used-mode . dired-mode))
      ("conf"
       (used-mode . conf-unix-mode))
      ("magit"
       (name . "magit*"))
      ("special"
       (used-mode . special-mode))
      ("org_note"
       (used-mode . org-mode))
      ("rust"
       (used-mode . rust-mode))
      ("elisp"
       (used-mode . emacs-lisp-mode))
      ("irc"
       (used-mode . circe-channel-mode)))))

(provide 'init-ibuffer)

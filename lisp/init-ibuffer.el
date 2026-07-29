(global-set-key (kbd "C-x C-b") 'ibuffer)

;; 不显示空组
(setq ibuffer-show-empty-filter-groups nil)

(setq ibuffer-saved-filter-groups
      '(("ibuffer"
	 ("rust"
	  (used-mode . rust-mode))
	 ("java"
	  (used-mode . java-mode))
	 ("Lean4"
	  (used-mode . lean4-mode))
	 ("python"
	  (used-mode . python-mode))
	 ("org_note"
	  (used-mode . org-mode))
	 ("typst"
	  (used-mode . typst--markup-mode))
	 ("elisp"
	  (used-mode . emacs-lisp-mode))
	 ("haskell"
	  (used-mode . haskell-mode))
	 ("matrix"
	  (name . "Ement*"))
	 ("irc query"
	  (used-mode . circe-query-mode))
	 ("dired"
	  (used-mode . dired-mode))
	 ("conf"
	  (used-mode . conf-unix-mode))
	 ("toml"
	  (used-mode . conf-toml-mode))
	 ("markdown"
	  (used-mode . markdown-mode))
	 ("docker-compose"
	  (name . "docker-compose"))
	 ("message"
	  (used-mode . messages-buffer-mode))
	 ("magit"
	  (name . "magit*"))
	 ("special"
	  (used-mode . special-mode))
	 ("irc"
	  (used-mode . circe-channel-mode)))))

(provide 'init-ibuffer)

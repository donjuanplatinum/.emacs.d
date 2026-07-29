(use-package all-the-icons
  :defer t
  :ensure t)
(use-package treemacs
  :ensure t
  :defer t
  :config
  (treemacs-tag-follow-mode)
  :bind
  (:map global-map
	("M-\-" . treemacs-select-window)
	("C-x t 1" . treemacs-delete-other-windows)
	("C-x t t" . treemacs)
	("C-x t B" . treemacs-bookmark)
	("C-x t M-t" . treemacs-find-tag)
	)
  (:map treemacs-mode-map
	("/" . treemacs-advanced-helpful-hydra)
	)
  )

(provide 'init-treemacs)

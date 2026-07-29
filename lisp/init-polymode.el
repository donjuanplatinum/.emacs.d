(use-package polymode
  :defer t
  :ensure t)

(use-package poly-markdown
  :defer t
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))
)

(use-package poly-org
  :defer t
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.org" . poly-org-mode))
)

(provide 'init-polymode)

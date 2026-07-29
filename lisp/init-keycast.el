(use-package keycast
  :ensure t
  :defer 3
  :config
  (progn
    (add-to-list 'global-mode-string '("" keycast-mode-line))
    (keycast-header-line-mode t))
  )

(provide 'init-keycast)

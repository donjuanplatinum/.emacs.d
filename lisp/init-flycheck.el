(use-package flycheck
  :ensure t
  :config
  (setq truncate-lines nil) ;自动换行
  :init (global-flycheck-mode)
  )
(provide 'init-flycheck)

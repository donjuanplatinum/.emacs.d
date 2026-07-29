(use-package flycheck
  :ensure t
  :defer t
  :config
  (setq truncate-lines nil) ;自动换行
					;    :init (global-flycheck-mode)
  )

(use-package flycheck-rust
  :ensure t
  :defer t
  )

(provide 'init-flycheck)

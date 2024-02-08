(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  (setq company-minimum-prefix-length 1) ;;一个字开始补全
  (setq company-show-quick-access t)
  (setq company-show-numbers t) ;;显示选项编号
  )
(use-package company-nginx
  :ensure t
  )
(provide 'init-company)

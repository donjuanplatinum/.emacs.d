(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  (setq company-minimum-prefix-length 1) ;;一个字开始补全
  (setq company-show-quick-access t)
  (setq company-show-numbers t) ;;显示选项编号
  )
(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  (setq company-minimum-prefix-length 1)  ;只需要一个字母开始补全
  (setq company-show-quick-access t)
  (setq company-show-numbers t) ;按M-1,M-2..选项编号
  )
(provide 'init-company)

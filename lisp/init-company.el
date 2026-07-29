(use-package company
  :ensure t
  :defer t
  :hook
  (prog-mode . company-mode) ; 编程模式启用company-mode
  :config
  (setq company-minimum-prefix-length 1) ;;一个字开始补全
  (setq company-show-quick-access t)
  (setq company-show-numbers t) ;;显示选项编号
  )

;; 提供上下文帮助
(use-package company-quickhelp
  :ensure t
  :defer t
  :hook (company-mode . company-quickhelp-mode)
  :config
  (setq company-quickhelp-delay 0.5))  ;; 设置帮助显示延迟

(use-package company-nginx
  :ensure t
  :defer t
  )

(provide 'init-company)

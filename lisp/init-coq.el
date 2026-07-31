(use-package proof-general
  :ensure t
  :defer t
  :mode ("\\.v\\'" . coq-mode)
  :custom
  ; 三窗口模式
  (proof-three-window-mode-policy 'hybrid)
  ; 输入 `.` 自动发送证明命令
  (proof-eletric-terminator-enable t)
  :hook
  ; 将公式等显示为数学符号
  (coq-mode . prettify-symbols-mode)
  )

(use-package company-coq
  :ensure t
  :defer t
  :hook
  (coq-mode . company-coq-mode)
  :config
  ;; 移除 dabbrev 后端,防止漏出其他 buffer 的符号
  (defun my/company-coq-backends ()
  (setq-local company-backends '((company-coq company-capf company-files))))
(add-hook 'coq-mode-hook #'my/company-coq-backends)
  )

(provide 'init-coq)

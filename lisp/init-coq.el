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
  )

(provide 'init-coq)

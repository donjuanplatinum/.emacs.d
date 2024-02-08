(use-package lsp-mode
  :ensure
  :commands lsp
  :custom
  ;; 保存时使用什么进行检查，默认是 "check"，我更推荐 "clippy"
  (lsp-rust-analyzer-cargo-watch-command "~/.emacs.d/clippy")
  (lsp-eldoc-render-all t)
  (lsp-idle-delay 0.6)
  (lsp-rust-analyzer-server-display-inlay-hints t)
  (lsp-rust-analyzer-store-path "~/.emacs.d/rust-analyzer")
  (lsp-inlay-hints-mode t) ;类型标注
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(use-package lsp-ui
  :ensure
  :commands lsp-ui-mode
  :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t)
  (lsp-ui-doc-enable nil))



;(use-package company-lsp
;  :config
;  (push 'company-lsp company-backends)
;  )
(global-set-key (kbd "C-c C-c a") 'lsp-execute-code-action)
(global-set-key (kbd "C-c C-c e") 'lsp-rust-analyzer-expand-macro)
(provide 'init-lsp)

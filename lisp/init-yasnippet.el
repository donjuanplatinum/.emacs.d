(use-package yasnippet
  :ensure t
  :defer t
  :config
  (setq yas-snippet-dirs
        (list (expand-file-name "snippets" user-emacs-directory)))  ;; 拼接路径并将其放入列表
  (yas-global-mode 1))

(use-package auto-yasnippet
  :ensure t
  :defer t)

(provide 'init-yasnippet)

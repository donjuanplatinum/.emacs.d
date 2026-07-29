(use-package magit
  :defer t
  :ensure t)

(use-package git-gutter
  :defer 5
  :ensure t
  :config (global-git-gutter-mode +1))

(use-package blamer
  :ensure t
  :defer 5
  :custom
  (blamer-idle-time 2) ; 延迟时间
  (blamer-min-offset 70)
  :custom-face
  (blamer-face ((t :foreground "#7a88cf"
		   :background nil
		   :height 100
		   :italic t)))
  :config
  (global-blamer-mode 1))

(provide 'init-git)

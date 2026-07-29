(use-package eat
  :ensure t
  :defer t
)

(use-package shell-pop
  :ensure t
  :defer t
  :config
  (setq shell-pop-shell-type (quote ("eat" "*eat*" (lambda nil (eat shell-pop-term-shell)))))
  (setq shell-pop-term-shell "/bin/bash")
  :bind
  ("C-`" . shell-pop)
  )

(provide 'init-shell)

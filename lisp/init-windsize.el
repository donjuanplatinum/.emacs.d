(use-package windsize
  :ensure t
  :defer t
  :bind
  ("C-SPC p" . windsize-up)
  ("C-SPC n" . windsize-down)
  ("C-SPC f" . windsize-right)
  ("C-SPC b" . windsize-left)
  )

(provide 'init-windsize)

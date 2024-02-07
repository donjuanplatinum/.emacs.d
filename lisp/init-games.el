(use-package 2048-game
  :ensure t
  )
(use-package gameoflife
  :ensure t
  )
(global-set-key (kbd "M-0") 'gameoflife-window)
(provide 'init-games)

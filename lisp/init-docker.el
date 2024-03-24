(use-package docker-compose-mode
  :ensure t)
(use-package dockerfile-mode
  :ensure t)
(use-package docker
  :ensure t
  :bind ("C-c d" . docker)
  )
(provide 'init-docker)

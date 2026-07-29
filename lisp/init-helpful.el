(use-package helpful
  :ensure t
  :defer t
  :bind
  ("C-h f" . helpful-callable)
  ("C-h v" . helpful-variable)
  ("C-h k" . helpful-key)
  ("C-h x" . helpful-command)
)

(provide 'init-helpful)

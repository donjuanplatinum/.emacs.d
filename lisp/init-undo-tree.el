(use-package undo-tree
  :ensure t
  :hook (after-init . global-undo-tree-mode)
  :defer t
  :config
  ;; don't save undo history to local files
  (setq undo-tree-auto-save-history nil)
  )

(provide 'init-undo-tree)

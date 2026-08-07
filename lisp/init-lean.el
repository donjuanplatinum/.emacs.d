(use-package lean4-mode
  :commands lean4-mode
  :vc (:url "https://github.com/leanprover-community/lean4-mode.git"
       :rev :last-release)
  :hook
  (lean4-mode . (lambda ()
                  (setq default-input-method "rime")))
  :defer t
  :ensure t
    )

(provide 'init-lean)

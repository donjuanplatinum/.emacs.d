(use-package rime
  :ensure t
  :init
  (module-load (expand-file-name "librime.so.1.10.0") ~/.emacs.d/rime)
  )
;(setq default-input-method "rime")
(provide 'init-rime)

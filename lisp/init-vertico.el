;; (use-package vertico
;;   :defer t
;;   :ensure t
;;   :custom
;;   (vertico-cycle t) ; 使补全的轮询成环状
;;   :init(vertico-mode))
(use-package orderless
:ensure t
:custom
(completion-styles '(orderless basic))
(completion-category-overrides '((file (styles partial-completion))))
(completion-pcm-leading-wildcard t))

(provide 'init-vertico)

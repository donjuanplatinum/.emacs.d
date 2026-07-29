(use-package dumb-jump
:ensure t
:defer t
:bind (("M-g o" . dumb-jump-go-other-window)
       ("M-g j" . dumb-jump-go)
       ("M-g b" . dumb-jump-back))
:custom
;; 强制使用 grep，跳过 rg/ag 的探测逻辑
(dumb-jump-force-searcher 'grep)

(dumb-jump-project-denylist '(".git" "node_modules" "target" "obj"))

:config
(add-hook 'xref-backend-functions #'dumb-jump-xref-activate))

(provide 'init-dumb-jump)

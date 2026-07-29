(desktop-save-mode 1)
(setq desktop-auto-save-timeout 60)

;; 启动时高阈值
(setq gc-cons-threshold (* 128 1024 1024))

;; 启动后降到 16MB
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 16 1024 1024))))

(setenv "DBUS_SESSION_BUS_ADDRESS" nil) ; 这个会导致podman无法使用

(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/")

(setq package-archives '(("gnu-mirror"   . "https://mirrors.ustc.edu.cn/elpa/gnu/")
			 ("melpa-mirror"  . "https://mirrors.ustc.edu.cn/elpa/melpa/")
			 ("nongnu-mirror" . "https://mirrors.ustc.edu.cn/elpa/nongnu/" )
			 ("org-mirror" . "https://mirrors.ustc.edu.cn/elpa/org/")
			 ))

(use-package benchmark-init
  :ensure t
  :config
  ;; To disable collection of benchmark data after init is done.
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

(global-unset-key (kbd "C-x C-b")) ;; bufferlist换成ibuffer
(global-unset-key (kbd "C-t"))  ;; hydra
(global-unset-key (kbd "M-x")) ;; smex
(global-unset-key (kbd "C-SPC")) ;; windsize

(which-function-mode)

;; custom file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; ibuffer配置
(require 'init-ibuffer)

;; emacs自带默认模式设置
(require 'default-set)

;; helpful
(require 'init-helpful)

(require 'init-rime)

(require 'init-org)
  ;; org-mode
  ;; markdown-mode
  (require 'init-markdown)

  ;; rust
  (require 'init-rust)

  ;; python
  (require 'init-python)

  ;; yaml
  (require 'init-yaml)

  ;; maxima
  (require 'init-maxima)

  ;; docker
  (require 'init-docker)

  ;; gnuplot
  (require 'init-gnuplot)

  ;; nov
  (require 'init-nov)

  ;; sphinx
  (require 'init-sphinx)

  ;; uniline
  (require 'init-uniline)

  ;; ein
  (require 'init-ein)

  ;; kotlin
  (require 'init-kotlin)
  ;; Lean
;  (require 'init-lean)
  ;; Dart
  (require 'init-dart)
  ;; TS
  (require 'init-ts)
  ;; vue
(require 'init-vue)
;; polymode
(require 'init-polymode)

;; embark
(require 'init-embark)
;; company
(require 'init-company)
;; whichkey
(require 'init-whichkey)
;; undo-tree
(require 'init-undo-tree)
;; curx
(require 'init-crux)
;; keycast
(require 'init-keycast)
;; tramp
(require 'init-tramp)
;; aira2
(require 'init-aria2)
;; hydra
(require 'init-hydra)
; smex
(require 'init-smex)
;; beacon
(require 'init-beacon)
;; anzu
(require 'init-anzu)
;; ivy
(require 'init-ivy)
;; vertico
;; (require 'init-vertico)
(require 'init-yasnippet)

;; dumb-jump
(require 'init-dumb-jump)

;; shell
(require 'init-shell)

(require 'init-git)

;; 主题设置
(require 'init-theme)
;; 括号色彩
(require 'init-rainbow)
;; 启动面板
(require 'init-dashboard)

(require 'init-ace-window)
;; treemacs
(require 'init-treemacs)
;; battery
(require 'init-battery)
;; zoom
(require 'init-zoom)
;; windsize
(require 'init-windsize)

(require 'init-game)

;(require 'init-aider)
(require 'init-ai)
(require 'init-mcp)

(require 'init-gnus)

(provide 'init)

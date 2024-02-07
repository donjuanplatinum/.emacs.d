;;官方包配置
(add-to-list 'load-path "~/.emacs.d/lisp/")
;;自定义配置
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
;;镜像设置
(require 'repo)
;;use-package初始化
(require 'use-package)
;;ibuffer配置
(require 'init-ibuffer)
;;emacs自带默认模式设置
(require 'default-set)

;;包设置
;;;;company
(require 'init-company)
;;;;magit
(require 'init-magit)
;;;;flycheck语法检查
(require 'init-flycheck)
;;;;rainbow-delimiters括号颜色
(require 'init-rainbow-delimiters)
;;;;window管理
(require 'init-ace-window)
;;;;dashboard
(require 'init-dashboard)
;;;;games
(require 'init-games)
;;;;circe
(require 'init-circe)
;;;;rust
(require 'init-rust)
;;;;matrix
(require 'init-matrix)
;;;;whichkey
(require 'init-whichkey)
;;;;pyim输入
(require 'init-pyim)

;;自定义设置
;;;;sdcv纯lisp实现
(require 'stardict)
(require 'init-stardict)
;(setq dict
;      (stardict-open "/home/donjuan/.emacs.d/dict/stardict-langdao-ec-gb-2.4.2" "langdao-ec-gb"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(pyim which-key rust-mode rainbow-delimiters magit gameoflife flycheck ement dashboard company circe-notifications ace-window 2048-game)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

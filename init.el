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
;;org设置
(require 'init-org)


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
;;;;lsp-mode
(require 'init-lsp)
;;;;kotlin
(require 'init-kotlin)
;;;;nginx
(require 'init-nginx)
;;;;yaml
(require 'init-yaml)
;;;;docker
(require 'init-docker)
;;;;popup
(require 'init-popup)
;;;;tsinghua-pyim
(add-to-list 'load-path "~/.emacs.d/site-lisp/pyim-tsinghua-dict/")
(require 'pyim-tsinghua-dict)
(pyim-tsinghua-dict-enable)

;;自定义设置
;;;;sdcv纯lisp实现

(require 'stardict)
(require 'init-dictionary)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(pyim-cregexp-utils which-key rust-mode rainbow-delimiters pyim-basedict pyim popup org-roam nginx-mode magit lsp-ui kotlin-mode gameoflife flycheck-rust ement dockerfile-mode docker-compose-mode dashboard company-nginx circe-notifications ace-window 2048-game)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

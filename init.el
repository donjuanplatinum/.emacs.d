;;官方包配置
(add-to-list 'load-path "~/.emacs.d/lisp/")
;;自定义配置
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
;;镜像设置
(require 'repo)
;;use-package初始化
(require 'use-package)

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
;;;;

;;自定义设置
;;;;sdcv纯lisp实现
(require 'stardict)
(require 'init-stardict)

(setq dict
      (stardict-open "/home/donjuan/.emacs.d/dict/stardict-langdao-ec-gb-2.4.2" "langdao-ec-gb"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ibuffer-saved-filter-groups
   '(("ibuffer"
      ("rust"
       (mode . rust-mode))
      ("dired"
       (used-mode . dired-mode))
      ("org-mode"
       (used-mode . org-mode)))))
 '(ibuffer-saved-filters
   '(("programming"
      (or
       (derived-mode . prog-mode)
       (mode . ess-mode)
       (mode . compilation-mode)))
     ("text document"
      (and
       (derived-mode . text-mode)
       (not
	(starred-name))))
     ("TeX"
      (or
       (derived-mode . tex-mode)
       (mode . latex-mode)
       (mode . context-mode)
       (mode . ams-tex-mode)
       (mode . bibtex-mode)))
     ("web"
      (or
       (derived-mode . sgml-mode)
       (derived-mode . css-mode)
       (mode . javascript-mode)
       (mode . js2-mode)
       (mode . scss-mode)
       (derived-mode . haml-mode)
       (mode . sass-mode)))
     ("gnus"
      (or
       (mode . message-mode)
       (mode . mail-mode)
       (mode . gnus-group-mode)
       (mode . gnus-summary-mode)
       (mode . gnus-article-mode))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

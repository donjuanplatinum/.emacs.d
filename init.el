;;关闭gui工具栏
(tool-bar-mode -1)

;;关闭提示音
(setq ring-bell-function 'ignore)

;;显示行号
(global-display-line-numbers-mode 'open)


;;关闭自动备份~文件
(setq make-backup-files nil)
(setq auto-save-default nil)

;;查看所有包的数量
;;(length package-alist)


;;最近文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 20)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;自动替换选择区内容
(delete-selection-mode 1)


;;高亮当前行(global-hl-line-mode 0)


;;主题
(load-theme 'deeper-blue' 1)


;;镜像设置
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'repo)

;;pdf-mode
(package-install 'pdf-tools)
(require 'pdf-tools)
;;LaTeX
(package-install 'auctex)
;(require 'auctex)

;;magit
(package-install 'magit)
(require 'magit)

;;flycheck语法检查
(package-install 'flycheck)
(require 'flycheck)
(global-flycheck-mode 1)

;;rainbow-delimiters括号颜色
(package-install 'rainbow-delimiters)
(rainbow-delimiters-mode 1)


;;which-key
(package-install 'which-key)
(require 'which-key)
(which-key-mode 1)


;;undo-tree
(package-install 'undo-tree)
(require 'undo-tree)


;;window管理
(package-install 'ace-window)
(require 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)

;;amx命令历史
(package-install 'amx)
(require 'amx)
(amx-mode 1)

;;smex
(package-install 'smex)
(require 'smex)
(global-set-key (kbd "M-x") 'smex)

;;

;;sdcv命令
(package-install 'sdcv)
(require 'sdcv)
(global-set-key (kbd "C-c d") 'sdcv-search-pointer+)

;;sdcv纯lisp实现
(require 'stardict)
(setq dict
      (stardict-open "~/.emacs.d/sdcv/stardict-langdao-ec-gb-2.4.2" "langdao-ec-gb"))

;;(stardict-lookup dict "hello")
;;(require 'stardict)
;; (setq dict
;;       (stardict-open "~/.stardict/dic/stardict-lazyworm-ec-2.4.2"
;;                      "lazyworm-ec"))
;; (stardict-word-exist-p dict "apple")
;;(stardict-lookup dict "apple")
;;
;; (stardict-open-dict-file dict)
;; (mapcar (lambda (x) (stardict-lookup dict x)) (make-list 1000 "apple"))





;;dashboard
(package-install 'dashboard)
(require 'dashboard)
(dashboard-setup-startup-hook)
;; Set the title
(setq dashboard-banner-logo-title "Donjuan Platinum")
;; Set the banner
(setq dashboard-startup-banner "~/.emacs.d/donjuan.png")
;; Value can be
;; - nil to display no banner
;; - 'official which displays the official emacs logo
;; - 'logo which displays an alternative emacs logo
;; - 1, 2 or 3 which displays one of the text banners
;; - "path/to/your/image.gif", "path/to/your/image.png", "path/to/your/text.txt" or "path/to/your/image.xbm" which displays whatever gif/image/text/xbm you would prefer
;; - a cons of '("path/to/your/image.png" . "path/to/your/text.txt")

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)

;;2048
(package-install '2048-game)
;;life-game
(package-install 'gameoflife)




 ;;rust
(package-install 'rust-mode)

;;company
(package-install 'company)
(require 'company)
(package-install 'company-nginx)
(global-company-mode 1)
(setq company-minimum-prefix-length 1)  ;只需要一个字母开始补全
;(setq company-show-numbers t) ;按M-1,M-2..选项编号
;(package-install 'company-box) ;图标
;(require 'company-box)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company-box smex sdcv company-nginx company gameoflife 2048-game rust-mode dashboard)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

















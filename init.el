

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



;;sdcv
(package-install 'sdcv)
(require 'sdcv)
(global-set-key (kbd "C-c d") 'sdcv-search-pointer+)


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
(package-install 'company-nginx)
(global-company-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company-nginx company gameoflife 2048-game rust-mode sdcv dashboard)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

















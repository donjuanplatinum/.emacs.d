;;关闭提示音
(setq ring-bell-function 'ignore)

;;关闭自动备份~文件
(setq make-backup-files nil)
(setq auto-save-default nil)

;;查看所有包的数量
;;(length package-alist)


;;最近文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;自动替换选择区内容
(delete-selection-mode 1)


;;高亮当前行(global-hl-line-mode 0)


;;主题
(load-theme 'deeper-blue' 1)


;;镜像设置
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'repo)


(use-package maple-translate
  :ensure nil
  :commands (maple-translate maple-translate+)
  )

;;package-install
(package-install 'use-package)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;maple-translate
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/maple-translate/"))
(require 'maple-translate-sdcv)

;;镜像设置
(setq package-archives '(("gnu-donjuan"   . "http://127.0.0.1:9998/elpa/gnu/")
			 ("melpa-donjuan"  . "http://127.0.0.1:9998/elpa/melpa/")
			 ("nongnu-donjuan" . "http://127.0.0.1/elpa/nongnu/" )
			 ))

;;关闭自动备份~文件
(setq make-backup-files nil)

;;查看所有包的数量
;;(length package-alist)


;;最近文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;自动替换选择区内容
(delete-selection-mode 1)



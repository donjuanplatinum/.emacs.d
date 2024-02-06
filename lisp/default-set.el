;;在关闭emacs前询问是否确认关闭
(setq confirm-kill-emacs #'yes-or-no-p)
;;自动补全括号
(electric-pair-mode t)
;;即使刷新
;(global-auto-revert-mode t)
;;折叠代码块
(setq-default hs-minor-mode t)
;(add-hook 'prog-mode-hook #'hs-minor-mode)


;;关闭滚动条
(scroll-bar-mode -1)
;;关闭gui工具栏
(tool-bar-mode -1)
;;关闭菜单
(menu-bar-mode -1)

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


;;主题
(load-theme 'manoj-dark' 1)


(provide 'default-set)

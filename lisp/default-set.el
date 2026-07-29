;; set-mark-command bind
(global-set-key (kbd "C-c r") 'set-mark-command)
;; 矩形操作
(global-set-key (kbd "C-c m") 'rectangle-mark-mode)

;; 自动替换选择区内容
(delete-selection-mode 1)

;; 自动补全括号
(electric-pair-mode 1)

;; 关闭提示音
(setq ring-bell-function 'ignore)

;; 显示行号
(global-display-line-numbers-mode 'open)
(column-number-mode 1)

;; 关闭自动备份~文件
(setq make-backup-files nil)
(setq auto-save-default nil)

(provide 'default-set)

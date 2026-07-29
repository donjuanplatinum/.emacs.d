(use-package gnus
    :defer t
    :config
    (gnus-demon-init)
            ;; 每 10 分钟检查一次
    (gnus-demon-add-handler 'gnus-group-get-new-news 10 t)
    :init
    ;; 基础信息
    (setq user-full-name "Donjuanplatinum")
    (setq user-mail-address "donplat@barrensea.org")

    ;; IMAP 服务器
    (setq gnus-select-method
          '(nnimap "barrensea.org"
                   (nnimap-address "imap.barrensea.org")
                   (nnimap-server-port 993)
                   (nnimap-stream ssl)
                   (nnimap-user "donplat@barrensea.org")
                   (nnimap-authenticator login)))

    ;; 自定义订阅函数：强制扁平，不设任何 parent
    (defun my-gnus-subscribe-flat (group)
      (gnus-group-change-level group
                               gnus-level-default-subscribed
                               gnus-level-zombie))
    (setq gnus-subscribe-newsgroup-method 'my-gnus-subscribe-flat)

    ;; 自动订阅新文件夹
    (setq gnus-auto-subscribed-groups t)

    ;; 异步
    (setq gnus-asynchronous t)

    ;; 显示所有级别的组
    (setq gnus-group-default-list-level 8)

    ;; 归档模式：拉取所有邮件（不只新/未读的）
    (setq gnus-fetch-old-headers t)    ; 从 IMAP 拉全部 header
    (setq gnus-large-newsgroup nil)     ; 不限数量

    

    ;; 进 group 后自动显示全部邮件
    (add-hook 'gnus-summary-prepared-hook 'gnus-summary-insert-old-articles)

    ;; 附件/大文件不限制
    (setq mm-large-file-threshold nil)          ; 不限附件大小
    (setq nnimap-fetch-partial-articles nil)    ; 不截断邮件

    ;; 关闭启动 splash
    (setq gnus-inhibit-startup-message t))

  ;; SMTP 发件
  (use-package smtpmail
    :ensure nil
    :config
    (setq smtpmail-smtp-server "smtp.barrensea.org"
          smtpmail-smtp-service 465
          smtpmail-stream-type 'ssl
          smtpmail-smtp-user "donplat@barrensea.org"))

  (setq message-send-mail-function 'smtpmail-send-it)

(provide 'init-gnus)

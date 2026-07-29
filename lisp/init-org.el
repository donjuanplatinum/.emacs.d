(use-package org-appear
  :ensure t
  :defer t
  :hook (org-mode . org-appear-mode)
  :config
  (setq org-appear-autolinks t)
  (setq org-appear-autosubmarkers t)
  (setq org-appear-autoentities t)
  (setq org-appear-autokeywords t)
  (setq org-appear-inside-latex t)
  )

;; Org mode的附加包，有诸多附加功能
(use-package org-contrib
  :defer t
  :ensure t)

;; 粘贴图片到org mode
(use-package org-download
  :ensure t
  :defer t ;; 延迟加载
  :bind
  (:map org-mode-map
        ("C-M-y" . org-download-clipboard)) ;; 绑定从剪贴版粘贴截图的快捷键
  :custom
  (org-download-heading-lvl 1) ;; 用一级标题给截图文件命名
  :config
  (setq-default org-download-image-dir "./imgs")) ;; 用同级 ./img 目录放置截图文件
(add-hook 'dired-mode-hook 'org-download-enable)

;; 显示latex公式
(use-package org-fragtog
  :ensure t
  :defer t
  :hook
  (org-mode . org-fragtog-mode)
  )

(use-package toc-org
  :ensure t
  :defer t
  )

(add-hook 'org-mode-hook 'toc-org-mode)
(add-hook 'markdown-mode-hook 'toc-org-mode)

(use-package easy-hugo
  :ensure t
  :defer t
  )
(setq easy-hugo-basedir "~/project/donjuan")

(use-package ox-gfm
  :ensure t
  :defer t
  :after ox)

(global-set-key (kbd "M-o") 'org-insert-structure-template)

;; 代码块高亮
(setq org-src-fontify-natively t)

(provide 'init-org)

(use-package counsel
  :ensure t
  :defer t)

(use-package ivy
  :ensure t
  :defer t
  :init
  (ivy-mode 1)
  (counsel-mode 1)
  :custom
  (ivy-use-virtual-buffers t) ; 显示最近访问的文件
  (ivy-count-format "(%d/%d) ") ; 搜索计数的格式
  (ivy-wrap t) ; 让ivy候选列表变为环状
  :bind
  (
   ("C-r" . 'swiper)
   ("C-s" . 'swiper)
   ("C-x b" . 'ivy-switch-buffer)
   :map minibuffer-local-map
   ("C-r" . counsel-minibuffer-histroy)
   )
  )

(provide 'init-ivy)

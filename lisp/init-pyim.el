(use-package pyim
  :ensure t
  )
(use-package pyim-basedict
  :ensure t
  )
(use-package pyim-cregexp-utils
  :ensuire t
  )
;加载basedict词库
(pyim-basedict-enable)
;设置Emacs默认输入法
(setq default-input-method "pyim")

;候选词数量设置

(setq pyim-page-length 5)


;; 设置 pyim 默认使用的输入法策略
(pyim-default-scheme 'quanpin)
;; (pyim-default-scheme 'wubi)
;; (pyim-default-scheme 'cangjie)

(setq default-input-method "pyim")
(global-set-key (kbd "C-\\") 'toggle-input-method)

(setq pyim-page-tooltip 'popup)


(provide 'init-pyim)

(use-package pyim
  :ensure t
  )
(use-package pyim-basedict
  :ensure t
  )
;(use-package pyim-cregexp-utils
;  :ensure t
;  )
;(use-package pyim-tsinghua-dict)
;加载basedict词库
;(pyim-basedict-enable)
;设置Emacs默认输入法


(setq default-input-method "pyim"
      pyim-title "pyim输入法"
      )
(defun pyim-set-scheme ()
  "select pyim scheme"
  (interactive)
  (let ((scheme '("全拼" "rime")) chosen-option)
    (setq chosen-option (completing-read "select your scheme:" scheme))
    (pcase chosen-option
      ("全拼" (pyim-default-scheme 'quanpin))
      ("rime" (pyim-default-scheme 'rime))
      )
    )
  )
(global-set-key (kbd "C-c c p") 'pyim-set-scheme)
;候选词数量设置

(setq pyim-page-length 5)

(setq default-input-method "pyim")
(global-set-key (kbd "C-\\") 'toggle-input-method)

(setq pyim-page-tooltip 'popup)




(provide 'init-pyim)

(defun stardict-choose-dict ()
  "选择一个字典"
  (interactive)
  (let ((dicts '("本草纲目" "郎道英汉5" "高级汉语大辞典" "古汉语常用辞典" "古汉语常用辞典" "汉语成语辞典" "计算机词汇" "湘雅医学辞典")) chosen-option)
    (setq chosen-option (completing-read "Select a dict: " dicts))
    (pcase chosen-option
            ("本草纲目" (setq dict-name "bcgm"))
            ("郎道英汉5" (setq dict-name "langdao-ec-gb"))
            ("高级汉语大辞典" (setq dict-name "gaojihanyudacidian_fix"))
            ("古汉语常用辞典" (setq dict-name "ghycyzzd"))
            ("汉语成语辞典" (setq dict-name "hanyuchengyucidian_fix"))
            ("计算机词汇" (setq dict-name "kdic-computer-gb"))
            ("湘雅医学辞典" (setq dict-name"xiangya-medical"))
	    )
	  )
  (setq dict (stardict-open (format "~/.emacs.d/dict/%s" dict-name) dict-name)))



(global-set-key (kbd "C-c d") 'stardict-translate-region)
(global-set-key (kbd "C-c c") 'stardict-choose-dict)


(provide 'init-dictionary)

;;; init-dictionary.el ends here

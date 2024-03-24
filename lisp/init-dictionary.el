
(defun stardict-choose-dict ()
  "select a dict"
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

(defun stardict-show-dict ()
  "show the dict you choose"
  (interactive)
  (with-output-to-temp-buffer "your dict"
    (message dict)
  )
)
(defun stardict-translate-region ()
  "翻译区域内的单词，并将结果显示在popup弹窗中"
  (interactive)
  (when (region-active-p)
    (let* ((beg (region-beginning))
           (end (region-end))
           (string (buffer-substring-no-properties beg end))
           (result (stardict-lookup dict string)))
      (popup-tip result)))) ; 使用popup-tip函数将结果显示在弹窗中


(defun stardict-translate-input ()
  "输入单词并翻译"
  (interactive)
  (let* ((input-word (read-string "Please enter word"))
	(result (stardict-lookup dict input-word)))
    (message result))
  )

(global-set-key (kbd "C-c c d") 'stardict-translate-region)
(global-set-key (kbd "C-c c c") 'stardict-choose-dict)
(global-set-key (kbd "C-c s") 'stardict-show-dict)
(global-set-key (kbd "C-c i") 'stardict-translate-input)
(provide 'init-dictionary)

;;; init-dictionary.el ends here

(defvar dict
      (stardict-open "~/.emacs.d/dict/stardict-langdao-ec-gb-2.4.2"
                     "langdao-ec-gb"))
(global-set-key (kbd "C-c d") 'stardict-translate-region)
(provide 'init-dictionary)
;;; init-dictionary.el ends here

;; (use-package gptel
;;   :ensure t
;;   :defer t
;;   :config
  
;;   (setq gptel-curl-extra-args '("--proxy" "http://127.0.0.1:12334"))
;;   (setq gptel-directives
;;       '((ide-agent . "你是一个专业的 Emacs IDE Agent。请你使用中文回复。")))
;;   ;; (setq
;;   ;;  gptel-model 'gemini-flash-latest
;;   ;;  gptel-backend (gptel-make-gemini "Gemini"
;;   ;;                  :key (lambda ()
;;   ;;                         (let ((key-path (expand-file-name "gptel-api" user-emacs-directory)))
;;   ;;                           (if (file-exists-p key-path)
;;   ;;                               (with-temp-buffer
;;   ;;                                 (insert-file-contents key-path)
;;   ;;                                 (string-trim (buffer-string)))
;;   ;;                             (message "警告：找不到 API Key 文件 %s" key-path)
;;   ;;                             nil)))
;;   ;;                  :stream t))
;;   (setq
;;    gptel-model 'deepseek-reasoner
;;    gptel-backend (gptel-make-deepseek "DeepSeek"
;;                     :key (lambda ()
;;                           (let ((key-path (expand-file-name "gptel-api" user-emacs-directory)))
;;                             (if (file-exists-p key-path)
;;                                 (with-temp-buffer
;;                                   (insert-file-contents key-path)
;;                                   (string-trim (buffer-string)))
;;                               (message "警告：找不到 API Key 文件 %s" key-path)
;;                               nil)))
;;                    :stream t))
;;   )

(provide 'init-ai)

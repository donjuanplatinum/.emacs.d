(use-package marginalia
  :ensure t
  :defer t
  :config
  (marginalia-mode))

(require 'subr-x)

(defun latex--paragraph-bounds ()
  (cons (save-excursion
          (backward-paragraph)
          (point))
        (save-excursion
          (forward-paragraph)
          (point))))

(defun latex--display-math-bounds ()
  "Return bounds for current paragraph if it is a $$...$$ block.

The result is (OPEN-BEG INNER-BEG INNER-END CLOSE-END)."
  (let* ((pos (point))
         (bounds (latex--paragraph-bounds))
         (beg (car bounds))
         (end (cdr bounds)))
    (save-excursion
      (goto-char beg)
      (skip-chars-forward " \t\n" end)
      (let ((open-beg (point)))
        (when (looking-at-p (regexp-quote "$$"))
          (let ((inner-beg (+ open-beg 2)))
            (goto-char end)
            (skip-chars-backward " \t\n" beg)
            (let ((close-end (point)))
              (when (and (>= (- close-end 2) inner-beg)
                         (save-excursion
                           (goto-char (- close-end 2))
                           (looking-at-p (regexp-quote "$$"))))
                (let ((inner-end (- close-end 2)))
                  (when (and (<= inner-beg pos)
                             (<= pos inner-end))
                    (list open-beg inner-beg inner-end close-end)))))))))))

(defun embark-target-latex-display-math ()
  "Embark target finder for $$...$$ display math blocks."
  (when (derived-mode-p 'org-mode 'markdown-mode 'text-mode)
    (when-let* ((bounds (latex--display-math-bounds)))
      (pcase-let ((`(,open-beg ,inner-beg ,inner-end ,close-end) bounds))
        `(latex-display-math
          ,(buffer-substring-no-properties inner-beg inner-end)
          ,open-beg . ,close-end)))))

(defun latex--insert-snippet (snippet)
  (if (fboundp 'yas-expand-snippet)
      (yas-expand-snippet snippet)
    (insert (replace-regexp-in-string "\\$[0-9]+" "" snippet))))

(defun latex-insert-bmatrix ()
  (interactive)
  (unless (latex--display-math-bounds)
    (user-error "Not inside a $$...$$ block"))
  (latex--insert-snippet
   "\\begin{bmatrix}\n$0\n\\end{bmatrix}"))

(defun latex-insert-cases ()
  (interactive)
  (unless (latex--display-math-bounds)
    (user-error "Not inside a $$...$$ block"))
  (latex--insert-snippet
   "\\begin{cases}\n$0\n\\end{cases}"))

(defun latex-insert-frac ()
  (interactive)
  (unless (latex--display-math-bounds)
    (user-error "Not inside a $$...$$ block"))
  (latex--insert-snippet "\\frac{$1}{$2}$0"))

(defvar embark-latex-display-math-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "b") #'latex-insert-bmatrix)
    (define-key map (kbd "c") #'latex-insert-cases)
    (define-key map (kbd "f") #'latex-insert-frac)
    map)
  "Embark actions for LaTeX display math blocks.")

(use-package embark
    :ensure t
;    :defer t
    :bind
    (("C-." . embark-act)         ;; pick some comfortable binding
     ("C-;" . embark-dwim)        ;; good alternative: M-.
     ("C-h B" . embark-bindings)) ;; alternative for `describe-bindings'

    :init

    ;; Optionally replace the key help with a completing-read interface
    ;;  (setq prefix-help-command #'embark-prefix-help-command)

    ;; Show the Embark target at point via Eldoc. You may adjust the
    ;; Eldoc strategy, if you want to see the documentation from
    ;; multiple providers. Beware that using this can be a little
    ;; jarring since the message shown in the minibuffer can be more
    ;; than one line, causing the modeline to move up and down:

    ;; (add-hook 'eldoc-documentation-functions #'embark-eldoc-first-target)
    ;; (setq eldoc-documentation-strategy #'eldoc-documentation-compose-eagerly)

    :config
    ;; Hide the mode line of the Embark live/completions buffers
    (add-to-list 'display-buffer-alist
  	       '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
  		 nil
  		 (window-parameters (mode-line-format . none))))
    (add-to-list 'embark-target-finders #'embark-target-latex-display-math)
    (add-to-list 'embark-keymap-alist
             '(latex-display-math embark-latex-display-math-map))
    )



(provide 'init-embark)

(require 'subr-x)
  (require 'which-func)

  (defcustom rust-impl-search-limit 12000
    "Maximum characters to scan backward when finding a Rust impl header."
    :type 'integer
    :group 'rust)

  (defun rust--same-depth-delimiter-between-p (beg end depth)
    "Return non-nil if a Rust item delimiter exists between BEG and END.
Only delimiters at syntax DEPTH are considered."
    (save-excursion
      (goto-char beg)
      (let (found)
        (while (and (not found) (re-search-forward "[;{}]" end t))
          (let ((state (syntax-ppss (match-beginning 0))))
            (when (and (= (car state) depth)
                       (not (nth 8 state)))
              (setq found t))))
        found)))

  (defun rust--impl-keyword-before-brace (brace-pos)
    "Return the start of the impl keyword whose body starts at BRACE-POS."
    (let* ((depth (car (syntax-ppss brace-pos)))
           (limit (max (point-min)
                       (- brace-pos rust-impl-search-limit)))
           candidate)
      (save-excursion
        (goto-char brace-pos)
        (while (and (not candidate)
                    (re-search-backward "\\_<impl\\_>" limit t))
          (let ((impl-beg (match-beginning 0))
                (impl-end (match-end 0))
                (state (syntax-ppss (match-beginning 0))))
            (when (and (= (car state) depth)
                       (not (nth 8 state))
                       (not (rust--same-depth-delimiter-between-p
                             impl-end brace-pos depth)))
              (setq candidate impl-beg))))
        candidate)))

  (defun rust--format-impl-header (impl-pos brace-pos)
    "Return a compact modeline string for the impl ending at BRACE-POS."
    (let ((header (buffer-substring-no-properties impl-pos brace-pos)))
      (setq header (replace-regexp-in-string "\\s-+" " " header))
      (setq header (replace-regexp-in-string "\\s-+where\\_>.*\\'" "" header))
      (string-trim header)))

  (defun rust-current-impl ()
    "Return the Rust impl surrounding point, or nil."
    (when (derived-mode-p 'rust-mode)
      (save-excursion
        (save-restriction
          (widen)
          (let ((pos (point))
                found
                open)
            (when (eq (char-after pos) ?{)
              (when-let ((impl-pos (rust--impl-keyword-before-brace pos)))
                (setq found (rust--format-impl-header impl-pos pos))))
            (while (and (not found)
                        (setq open (nth 1 (syntax-ppss pos))))
              (when (eq (char-after open) ?{)
                (when-let ((impl-pos (rust--impl-keyword-before-brace open)))
                  (setq found (rust--format-impl-header impl-pos open))))
              (setq pos open))
            found)))))

  (defun rust-which-impl-setup ()
    "Show the surrounding Rust impl in `which-function-mode'."
    (add-hook 'which-func-functions #'rust-current-impl nil t))

(use-package rust-mode
  :defer t
  :ensure t
  :hook (rust-mode . rust-which-impl-setup))

(provide 'init-rust)

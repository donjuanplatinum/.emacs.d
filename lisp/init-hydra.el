(use-package hydra
  :ensure t
  :defer t
  )

(defhydra hydra-navigation (:color red)
  "
  _p_/_k_: Up (C-p)             _h_: Back (C-b)         _a_: Home (C-a)  _G_: End of Buffer (M->)
  _l_: Forward (C-f)            _n_/_j_: Down (C-n)     _e_: End (C-e)   _G_: Beginning of Buffer (M-<)
  _v_: Scroll Up (C-v)          _V_: Scroll Down (M-v)  _t_: Show Unicode _o_: ace-window
  _/_: undo (C-/)               _f_: Forward Word (M-f) _b_: Backward Word (M-b) _r_: set-mark-command
  _w_: kill-ring-save (M-w)     _y_: yank (M-y)         _x_: delete-char (C-d)
  "

  ("p" previous-line)
  ("k" previous-line)
  
  ("b" backward-word)
  ("h" backward-char)
  
  ("f" forward-word)
  ("l" forward-char)
  
  ("n" next-line)
  ("j" next-line)
  
  ("a" move-beginning-of-line)
  ("e" move-end-of-line)

  ("g" beginning-of-buffer)
  ("G" end-of-buffer)

  ("v" scroll-up-command)
  ("V" scroll-down-command)

  ("t" show-unicode-at-point-details)

  ("o" ace-window)

  ("/" undo-tree-undo)

  ("r" set-mark-command)
  ("w" kill-ring-save)
  ("y" yank)
  ("x" delete-char)
  
  ("q" nil "quit")
  )
(global-set-key (kbd "C-t") 'hydra-navigation/body)

(provide 'init-hydra)

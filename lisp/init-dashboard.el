(use-package dashboard
  :ensure t
  :init (dashboard-setup-startup-hook)
  :config
  (setq dashboard-banner-logo-title "Donjuan Platinum") ;Set the title
  (setq dashboard-startup-banner "~/.emacs.d/donjuan.png") ;set the banner
  (setq dashboard-center-content t)
  (setq dashboard-show-shortcuts nil)
  )




(provide 'init-dashboard)

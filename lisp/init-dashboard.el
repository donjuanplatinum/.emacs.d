(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)

  )

(setq dashboard-banner-logo-title "DonjuanPlatinum")
(setq dashboard-startup-banner "~/.emacs.d/img/donjuan.png")
(setq dashboard-image-banner-max-height 160)
(setq dashboard-image-banner-max-width 320)
(setq dashboard-center-content t)
(setq dashboard-vertically-center-content t)

(setq dashboard-items '(
			(recents . 5)
			(projects . 5)
			))

(setq dashboard-item-shortcuts '((recents . "r")
				 (projects . "p")
				 ))

(provide 'init-dashboard)

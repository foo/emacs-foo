(defun foo-appearance-init ()
  (setq inhibit-startup-message t)

  ;; disable parts of UI
  (menu-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1)
  (tool-bar-mode -1)

  ;; font
  (set-default-font "Monospace-12")

  ;; color theme
  (load-theme '
					;adwaita
					;deeper-blue
					;dichromacy
					;light-blue
					;manoj-dark
					;misterioso
					tango
					;tango-dark
					;tsdh-dark
					;tsdh-light
					;wheatgrass
					;whiteboard
					;wombat
   t)
  
  ;; cursor
  (blink-cursor-mode -1)
  (setq evil-default-cursor t)
  (set-cursor-color "black")

  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))

(add-hook 'after-init-hook 'foo-appearance-init)

(provide 'foo-appearance)

(setq inhibit-startup-message t)

;; disable parts of UI
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(tool-bar-mode -1)

;; cursor
(blink-cursor-mode -1)
(setq evil-default-cursor t)

;; font
(set-default-font "Ubuntu Mono-13:bold")

;; color theme
(load-theme '
;adwaita
;deeper-blue
;dichromacy
;leuven
;light-blue
;manoj-dark
misterioso
;tango
;tango-dark
;tsdh-dark
;tsdh-light
;wheatgrass
;whiteboard
;wombat
t)

(provide 'foo-appearance)

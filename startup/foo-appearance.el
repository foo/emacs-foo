(setq inhibit-startup-message t)

;; disable parts of UI
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(tool-bar-mode -1)

;; cursor
(blink-cursor-mode -1)
(setq evil-default-cursor t)

(provide 'foo-appearance)

(add-to-list 'load-path
	     (concat foo-config-dir "evil-states"))

(setq evil-default-state 'normal)
(setq evil-want-C-w-in-emacs-state 1)

(require 'evil)
(evil-mode 1)

(require 'foo-normal-state)
(require 'foo-emacs-state)
(require 'foo-insert-state)
(require 'foo-visual-state)

(define-key evil-window-map "h" 'delete-other-windows)
(define-key evil-window-map "s" 'delete-window)
(define-key evil-window-map "t" 'split-window-below)
(define-key evil-window-map "n" 'split-window-right)

(provide 'foo-evil-states)

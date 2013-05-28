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

(provide 'foo-evil-states)

(add-to-list 'load-path
	     (concat foo-config-dir "evil-states"))

(require 'evil)
(evil-mode 1)
(setq evil-set-initial-state 'evil-normal-state)

(require 'foo-window-state)
(require 'foo-normal-state)
(require 'foo-insert-state)
(require 'foo-motion-state)
(require 'foo-all-states)

(provide 'foo-evil-states)

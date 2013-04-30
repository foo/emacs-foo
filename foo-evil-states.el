(add-to-list 'load-path
	     (concat foo-config-dir "evil-states"))

(defvar foo-all-states
  '(evil-insert-state
    evil-normal-mode
    evil-movement-mode))

(require 'evil)
(evil-mode 1)

(require 'foo-normal-state)
(require 'foo-insert-state)
(require 'foo-movement-state)
(require 'foo-all-states)

(provide 'foo-evil-states)

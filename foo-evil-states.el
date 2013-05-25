(add-to-list 'load-path
	     (concat foo-config-dir "evil-states"))

(setq evil-default-state 'normal)

(require 'evil)
(evil-mode 1)

(evil-define-state window
  "Window manipulation state"
  :tag " <W> "
  :message "-- window manipulation --")

(require 'foo-window-state)
(require 'foo-normal-state)
(require 'foo-emacs-state)
(require 'foo-insert-state)
(require 'foo-motion-state)

(provide 'foo-evil-states)

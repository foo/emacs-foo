(add-to-list 'load-path
	     (concat foo-config-dir "evil-states"))

(setq evil-default-state 'motion)

(require 'evil)
(evil-mode 1)

(evil-define-state window
  "Window manipulation state"
  :tag " <W> "
  :message "-- window manipulation --")

(evil-define-state edit
  "Edit state"
  :tag " <ED> "
  :message "-- edit --")


(require 'foo-window-state)
(require 'foo-edit-state)
(require 'foo-insert-state)
(require 'foo-motion-state)

(provide 'foo-evil-states)

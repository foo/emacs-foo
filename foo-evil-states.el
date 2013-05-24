(add-to-list 'load-path
	     (concat foo-config-dir "evil-states"))

(require 'evil)

(evil-define-state window
  "Window manipulation state"
  :tag " <W> "
  :message "-- window manipulation --")

(setcdr evil-window-state-map nil) 

(evil-define-state movement
  "Read only movement state"
  :tag " <MM> "
  :message "-- movement --")

(setcdr evil-movement-state-map nil) 

(evil-define-state edit
  "Edit state"
  :tag " <ED> "
  :message "-- edit --")

(setcdr evil-edit-state-map nil) 

(require 'foo-window-state)
(require 'foo-edit-state)
(require 'foo-insert-state)
(require 'foo-movement-state)

(setq evil-set-initial-state 'evil-movement-state)
(evil-mode 1)

(provide 'foo-evil-states)

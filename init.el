; temporary placement, as this version
; of config lacks needed features
(defvar foo-config-dir "~/code/emacs-foo")

(add-to-list 'load-path "~/code/emacs-foo")

; foo- prefix convention
(require 'foo-startup)

(defvar foo-all-states
  '(evil-insert-state
    evil-normal-mode
    evil-movement-mode))

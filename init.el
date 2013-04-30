; temporary placement, as this version
; of config lacks needed features
(defvar foo-config-dir "~/code/emacs-foo/")

(add-to-list 'load-path foo-config-dir)

; foo- prefix convention
(require 'foo-startup)
(require 'foo-evil-states)


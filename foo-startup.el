(add-to-list 'load-path
	     (concat foo-config-dir "startup"))

(require 'foo-packages)
(require 'foo-emacs-state-keys)
(require 'foo-appearance)
(require 'foo-unlock-keys)

(find-file "/home/maciek/shortcuts")

(defvar foo-debug-buffer nil)

(when foo-debug-buffer
  (split-window-below)
  (switch-to-buffer "*Messages*")
  (other-window 1))

(provide 'foo-startup)

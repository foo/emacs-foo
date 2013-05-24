(add-to-list 'load-path
	     (concat foo-config-dir "startup"))

(require 'foo-packages)
(require 'foo-emacs-state-keys)
(require 'foo-appearance)
(require 'foo-unlock-keys)
(require 'foo-modes)

(find-file "/home/maciek/shortcuts")

(provide 'foo-startup)

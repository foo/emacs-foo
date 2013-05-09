(add-to-list 'load-path
	     (concat foo-config-dir "startup"))

(require 'foo-packages)
(require 'foo-appearance)
(require 'foo-unlock-keys)

(find-file "/home/maciek/shortcuts")

(provide 'foo-startup)

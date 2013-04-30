(add-to-list 'load-path
	     (concat foo-config-dir "startup"))

(require 'foo-packages)
(require 'foo-appearance)
(require 'foo-unlock-keys)

(provide 'foo-startup)

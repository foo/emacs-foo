(add-to-list 'load-path
	     (concat foo-config-dir "startup"))

(require 'foo-packages)
(require 'foo-appearance)

(provide 'foo-startup)


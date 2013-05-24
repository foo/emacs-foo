(add-to-list 'load-path
	     (concat foo-config-dir "modes"))

(require 'foo-dired)
(require 'foo-cpp)

(provide 'foo-modes)

(add-to-list 'load-path
             (concat foo-config-dir "modes"))

(require 'foo-dired)
(require 'foo-cpp)
(require 'foo-magit)
(require 'foo-ruby)

(provide 'foo-modes)

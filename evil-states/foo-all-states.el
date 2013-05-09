(require 'evil)

(defun foo-dired-here ()
  (interactive)
  (find-file "."))

(define-key evil-normal-state-map "f" 'foo-dired-here)
(define-key evil-motion-state-map "f" 'foo-dired-here)

(provide 'foo-all-states)

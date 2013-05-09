(require 'evil)

(defun foo-dired-here ()
  (interactive)
  (let ((current-buffer (buffer-file-name)))
    (find-file ".")
    (when (stringp buffer)
	(beginning-of-buffer)
	(search-forward current-buffer nil nil))))

(define-key evil-normal-state-map "f" 'foo-dired-here)
(define-key evil-motion-state-map "f" 'foo-dired-here)

(provide 'foo-all-states)

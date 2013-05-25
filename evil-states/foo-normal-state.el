(defun reindent-buffer ()
  "Function from basic-edit-toolkit."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)
    (delete-trailing-whitespace)
    (untabify (point-min) (point-max))))

(define-key evil-edit-state-map "w" 'evil-window-state)

(define-key evil-edit-state-map "z" 'evil-emacs-state)
(define-key evil-edit-state-map "m" 'evil-motion-state)
(define-key evil-edit-state-map "f" 'dired-jump)
(define-key evil-edit-state-map "r" 'reindent-buffer)
(define-key evil-edit-state-map "v" 'magit-status)

(provide 'foo-edit-state)

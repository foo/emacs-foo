(defun reindent-buffer ()
  "Function from basic-edit-toolkit."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)
    (delete-trailing-whitespace)
    (untabify (point-min) (point-max))))

(define-key evil-normal-state-map "w" 'evil-window-state)

(define-key evil-normal-state-map "z" 'evil-emacs-state)
(define-key evil-normal-state-map "m" 'evil-motion-state)
(define-key evil-normal-state-map "f" 'dired-jump)
(define-key evil-normal-state-map "r" 'reindent-buffer)
(define-key evil-normal-state-map "\C-v" 'magit-status)

(provide 'foo-normal-state)

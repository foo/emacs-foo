(defun reindent-buffer ()
  "Function from basic-edit-toolkit."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)
    (delete-trailing-whitespace)
    (untabify (point-min) (point-max))))

(define-key evil-normal-state-map "\C-z" 'evil-emacs-state)
(define-key evil-normal-state-map "\C-v" 'magit-status)

(define-key evil-normal-state-map "h" 'evil-backward-char)
(define-key evil-normal-state-map "t" 'evil-next-line)
(define-key evil-normal-state-map "n" 'evil-previous-line)
(define-key evil-normal-state-map "s" 'evil-forward-char)

(define-key evil-normal-state-map "f" 'dired-jump)
(define-key evil-normal-state-map "k" 'avy-goto-word-1)
(define-key evil-normal-state-map "j" 'avy-goto-char)

(define-key evil-normal-state-map "\C-h" 'ignore)
(define-key evil-normal-state-map "\C-t" 'ignore)
(define-key evil-normal-state-map "\C-n" 'ignore)
(define-key evil-normal-state-map "\C-s" 'ignore)

(define-key evil-normal-state-map "H" 'ignore)
(define-key evil-normal-state-map "T" 'ignore)
(define-key evil-normal-state-map "N" 'ignore)
(define-key evil-normal-state-map "S" 'ignore)

(provide 'foo-normal-state)

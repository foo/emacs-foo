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
(define-key evil-normal-state-map "j" 'ace-jump-mode)

(define-key evil-normal-state-map "\C-n" 'evil-scroll-page-up)
(define-key evil-normal-state-map "\C-t" 'evil-scroll-page-down)

(provide 'foo-normal-state)

(defun duplicate-line-above (&optional reverse)
  "Duplicate current line above."
  (interactive)
  (let ((origianl-column (current-column))
        line-content)
    (setq line-content (buffer-substring (line-beginning-position) (line-end-position)))
    (beginning-of-line)
    (and reverse (forward-line +1))
    (newline +1)
    (forward-line -1)
    (insert line-content)
    (move-to-column origianl-column t)))

(defun duplicate-line-below ()
  "Duplicate current line below"
  (interactive)
  (duplicate-line-above t))

(define-key evil-emacs-state-map (kbd "C-f") 'dired-jump)

(define-key evil-emacs-state-map [(control k)] 'kill-line)
(define-key evil-emacs-state-map [(control l)] 'duplicate-line-below)
(define-key evil-emacs-state-map [(control y)] 'yank)

(define-key evil-emacs-state-map (kbd "C-e") 'move-end-of-line)
(define-key evil-emacs-state-map (kbd "C-a") 'move-beginning-of-line)

(define-key evil-emacs-state-map (kbd "C-,") 'backward-kill-word)
(define-key evil-emacs-state-map (kbd "C-p") 'kill-word)
(define-key evil-emacs-state-map (kbd "C-.") 'delete-backward-char)

(define-key evil-emacs-state-map [(control s)] 'forward-char)
(define-key evil-emacs-state-map [(hyper h)] 'backward-char)

(define-key evil-emacs-state-map [(control n)] 'previous-line)
(define-key evil-emacs-state-map [(control t)] 'next-line)

(provide 'foo-emacs-state)

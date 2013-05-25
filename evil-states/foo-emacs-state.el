(define-key evil-emacs-state-map (kbd "C-w") 'evil-window-state)

(define-key evil-emacs-state-map (kbd "C-f") 'dired-jump)

(define-key evil-emacs-state-map [(control k)] 'kill-line)
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

(define-key evil-movement-state-map "w" 'evil-window-state)

(define-key evil-movement-state-map (kbd "C-n") 'evil-edit-state)
(define-key evil-movement-state-map (kbd "u") 'evil-edit-state)
(define-key evil-movement-state-map (kbd "i") 'evil-insert-state)

(define-key evil-movement-state-map "f" 'dired-jump)

(define-key evil-movement-state-map "r" 'evil-forward-word-end)
(define-key evil-movement-state-map "c" 'evil-backward-word-begin)

(define-key evil-movement-state-map "n" 'evil-forward-char)
(define-key evil-movement-state-map "d" 'evil-backward-char)
(define-key evil-movement-state-map "h" 'evil-next-line)
(define-key evil-movement-state-map "t" 'evil-previous-line)

(define-key evil-movement-state-map "l" 'evil-scroll-up)
(define-key evil-movement-state-map "b" 'evil-scroll-down)

(define-key evil-movement-state-map "a" 'beginning-of-line)
(define-key evil-movement-state-map "e" 'end-of-line)

; searching

; o on dvorak is where s is on qwerty
(define-key evil-movement-state-map "o" 'isearch-forward)
(define-key evil-movement-state-map "s" 'isearch-forward)

(define-key evil-movement-state-map "m" 'ace-jump-mode)

(provide 'foo-movement-state)

(define-key evil-motion-state-map "w" 'evil-window-state)

(define-key evil-motion-state-map (kbd "C-n") 'evil-normal-state)
(define-key evil-motion-state-map (kbd "u") 'evil-normal-state)
(define-key evil-motion-state-map (kbd "i") 'evil-insert-state)

(define-key evil-motion-state-map "f" 'dired-jump)

(define-key evil-motion-state-map "r" 'evil-forward-word-end)
(define-key evil-motion-state-map "c" 'evil-backward-word-begin)

(define-key evil-motion-state-map "h" 'evil-backward-char)
(define-key evil-motion-state-map "t" 'evil-next-line)
(define-key evil-motion-state-map "n" 'evil-previous-line)
(define-key evil-motion-state-map "s" 'evil-forward-char)

(define-key evil-motion-state-map "l" 'evil-scroll-up)
(define-key evil-motion-state-map "b" 'evil-scroll-down)

(define-key evil-motion-state-map "a" 'beginning-of-line)
(define-key evil-motion-state-map "e" 'end-of-line)

; searching

; o on dvorak is where s is on qwerty
(define-key evil-motion-state-map "o" 'isearch-forward)
(define-key evil-motion-state-map "s" 'isearch-forward)

(define-key evil-motion-state-map "m" 'ace-jump-mode)

(provide 'foo-motion-state)

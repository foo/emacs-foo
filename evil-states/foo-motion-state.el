; entering other states
(define-key evil-motion-state-map (kbd "C-n") 'evil-execute-in-normal-state)
(define-key evil-motion-state-map (kbd "u") 'evil-execute-in-normal-state)
(define-key evil-motion-state-map (kbd "i") 'evil-insert-state)

; motion
(define-key evil-motion-state-map "r" 'evil-forward-word-end)
(define-key evil-motion-state-map "c" 'evil-backward-word-begin)
(define-key evil-motion-state-map "n" 'evil-forward-char)
(define-key evil-motion-state-map "d" 'evil-backward-char)
(define-key evil-motion-state-map "h" 'evil-next-line)
(define-key evil-motion-state-map "t" 'evil-previous-line)

(define-key evil-motion-state-map "s" 'isearch-forward)

(provide 'foo-motion-state)

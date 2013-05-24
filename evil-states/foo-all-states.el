(require 'evil)

(define-key evil-normal-state-map "f" 'dired-jump)
(define-key evil-motion-state-map "f" 'dired-jump)
(define-key evil-window-state-map "f" 'dired-jump)

(provide 'foo-all-states)

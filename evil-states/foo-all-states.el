(defvar foo-all-mode-maps
  '(evil-insert-state-map
    evil-normal-mode-map
    evil-movement-mode-map))

(dolist (m foo-all-mode-maps)
  (define-key m "C-z" 'evil-emacs-state))

(provide 'foo-all-states)

(defun foo-magit-configure ()
  (require 'evil)
  (evil-set-initial-state 'magit-log-edit-mode 'insert)
  (evil-set-initial-state 'magit-status-mode 'emacs)
  (define-key magit-status-mode-map "f" '(lambda () (interactive) (dired ".")))
  (define-key magit-status-mode-map "t" 'magit-goto-next-section)
  (define-key magit-status-mode-map "w" 'evil-window-state)
  (define-key magit-status-mode-map "n" 'magit-goto-previous-section))

(add-hook 'magit-mode-hook 'foo-magit-configure)
	  
(provide 'foo-magit)

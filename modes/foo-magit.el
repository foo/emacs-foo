(add-hook 'magit-mode-hook
  (lambda ()
    (define-key magit-status-mode-map (kbd "h") 'magit-goto-next-section)
    (define-key magit-status-mode-map (kbd "t") 'magit-goto-previous-section)))


(provide 'foo-magit)

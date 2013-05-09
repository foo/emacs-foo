(add-hook 'dired-mode-hook 'foo-dired-keybindings)

(defun foo-dired-keybindings ()
  (local-set-key (kbd "t") 'dired-previous-line)
  (local-set-key (kbd "h") 'dired-next-line))

(provide 'foo-dired)

(add-hook 'dired-mode-hook 'foo-dired-keybindings)

(defun foo-dired-keybindings ()
  (require 'evil)
  (require 'foo-normal-state)
  (evil-define-key 'normal dired-mode-map "c" 'dired-up-directory)
  (evil-define-key 'normal dired-mode-map "n" 'dired-previous-line)
  (evil-define-key 'normal dired-mode-map "w" 'evil-window-state)
  (evil-define-key 'normal dired-mode-map "<return>" 'dired-view-file)
  (evil-define-key 'normal dired-mode-map "t" 'dired-next-line))


(provide 'foo-dired)

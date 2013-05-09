(add-hook 'dired-mode-hook 'foo-dired-keybindings)

(defun foo-dired-keybindings ()
  (require 'dired)
  (require 'evil)
  (evil-define-key 'normal dired-mode-map "r" 'isearch-backward)
  (evil-define-key 'normal dired-mode-map "s" 'isearch-forward)
  (evil-define-key 'normal dired-mode-map "c" 'dired-up-directory)
  (evil-define-key 'normal dired-mode-map "t" 'dired-previous-line)
  (evil-define-key 'normal dired-mode-map "h" 'dired-next-line))


(provide 'foo-dired)

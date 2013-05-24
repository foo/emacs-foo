(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))

(evil-define-state window
  "Window manipulation state"
  :tag " <W> "
  :message "-- window manipulation --")

(define-key evil-insert-state-map (kbd "C-w") 'evil-window-state)
(define-key evil-motion-state-map "w" 'evil-window-state)
(define-key evil-normal-state-map "w" 'evil-window-state)

(define-key evil-window-state-map "h" 'delete-other-windows)
(define-key evil-window-state-map "t" 'split-window-below)
(define-key evil-window-state-map "n" 'split-window-right)
(define-key evil-window-state-map "s" 'delete-window)
(define-key evil-window-state-map "v" 'toggle-window-split)
(define-key evil-window-state-map "m" 'evil-normal-state)

(provide 'foo-window-state)

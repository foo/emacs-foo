(require 'cc-mode)

(define-key c++-mode-map (kbd "RET") 'newline-and-indent)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))

(provide 'foo-cpp)

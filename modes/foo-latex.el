(provide 'foo-latex)

(setq TeX-PDF-mode t)
(add-hook 'LaTeX-mode-hook '(lambda ()
                             (auto-fill-mode 1)))

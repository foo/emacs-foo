(provide 'foo-latex)

(setq TeX-PDF-mode t)

(defun foo-latex-hook ()
  )

(add-hook 'LaTeX-mode-hook 'foo-latex-hook)
; TODO:
; - snippets (begin, end)
; - bind the preview to single key in latex modemap
; - smart indentation
; - reftex

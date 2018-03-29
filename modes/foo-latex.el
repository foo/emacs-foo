(require 'tex-site)

(setq LaTeX-item-indent 0)
(setq TeX-PDF-mode t)
(setq TeX-newline-function 'reindent-then-newline-and-indent)

(autoload 'reftex-mode "reftex" "RefTeX Minor Mode" t)
(autoload 'turn-on-reftex "reftex" "RefTeX Minor Mode" nil)
(autoload 'reftex-citation "reftex-cite" "Make citation" nil)
(autoload 'reftex-index-phrase-mode "reftex-index" "Phrase Mode" t)
(add-hook 'latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
;; (add-hook 'reftex-load-hook 'imenu-add-menubar-index)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(defun foo-latex-hook ()
  (push 
    '("Latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
      :help "Run Latexmk on file")
    TeX-command-list)
 )


(add-hook 'LaTeX-mode-hook 'foo-latex-hook)
(add-hook 'reftex-toc-mode-hook  
	   '(lambda ()
	       (define-key reftex-toc-mode-map "n" 'reftex-toc-previous)
	       (define-key reftex-toc-mode-map "t" 'reftex-toc-next)
	     ))
; TODO:
; - snippets (begin, end)
; - bind the preview to single key in latex modemap
; - smart indentation
; - reftex

(provide 'foo-latex)

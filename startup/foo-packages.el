(defvar foo-packages '(evil
		       smex
		       auctex
		       elpy
		       flycheck
		       ;;ace-jump-mode
		       ))

;; below: choosing repository, refreshing contents, installing packages
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(mapcar (lambda (p)
	  (when (not (package-installed-p p))
	    (package-install p)))
	foo-packages)

(provide 'foo-packages)

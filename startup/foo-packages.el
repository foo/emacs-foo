(defvar foo-packages '(evil
		       ace-jump-mode))

;; below: choosing repository, refreshing contents, installing packages
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (p foo-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'foo-packages)

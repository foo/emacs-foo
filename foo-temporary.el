;; this file is for stuff that I want to test quickly

(setq make-backup-files nil)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Auto refresh buffers
(global-auto-revert-mode 1)

(setq avy-keys '(?a ?o ?e ?u ?i ?d ?h ?t ?n ?s
                 ?p ?y ?f ?g ?c ?r ?l))

(provide 'foo-temporary)

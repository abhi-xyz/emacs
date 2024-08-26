(require 'org-roam)
(setq org-roam-directory "~/documents/org-roam/")
(setq org-roam-dailies-directory "~/documents/org-roam/daily/")

(setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))

(org-roam-db-autosync-mode)

(require 'org-roam-protocol)


















; org-mode to hide the emphasis markup (e.g. /.../ for italics, *...* for bold, etc.):
(setq org-hide-emphasis-markers t)
;;
;; ;; font-lock substitution for list markers (I always use “-” for lists, but you can change this if you want) by replacing them with a centered-dot character:
;;   (font-lock-add-keywords 'org-mode
;;                           '(("^ *\\([-]\\) "
;;                              (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
;;


(custom-set-faces
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1)))))

(require 'org-tempo)

(add-hook 'org-mode-hook 'org-indent-mode)
(require 'mod-org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))


(provide 'mod-org)

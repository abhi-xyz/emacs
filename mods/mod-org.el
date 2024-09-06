(require 'org-roam)
(setq org-roam-directory "~/documents/org-roam/")
(setq org-roam-dailies-directory "~/documents/org-roam/daily/")

(setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))

(org-roam-db-autosync-mode)

(require 'org-roam-protocol)

















(provide 'mod-org)

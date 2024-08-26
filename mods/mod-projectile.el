
(require 'projectile)

(projectile-mode)
;;  :custom ((projectile-completion-system 'ivy))
;;  :bind-keymap
;;  ("C-c p" . projectile-command-map)


(require 'counsel-projectile)
  (counsel-projectile-mode)

(provide 'mod-projectile)

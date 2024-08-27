(add-to-list 'default-frame-alist '(alpha-background . 100)) ; For all new frames henceforth

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)


(load-theme 'elegant t)



(require 'book-mode)
(add-hook 'org-mode-hook 'book-mode)


(require 'ispell)
(require 'mod-dashboard)
(require 'mod-modeline)
(require 'mod-prettier)
(require 'mod-fonts)
(require 'mod-evil)
(require 'mod-keybindings)
(require 'mod-org)
(require 'mod-projectile)
(require 'mod-auto-comp)
(require 'mod-org-tex)
(require 'mod-neotree)


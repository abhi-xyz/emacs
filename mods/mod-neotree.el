



(require 'neotree)
  (setq neo-smart-open t
        neo-show-hidden-files t
        neo-window-width 55
        neo-window-fixed-size nil
        inhibit-compacting-font-caches t
        projectile-switch-project-action 'neotree-projectile-action) 
        ;; truncate long file names in neotree
        (add-hook 'neo-after-create-hook
           #'(lambda (_)
               (with-current-buffer (get-buffer neo-buffer-name)
                 (setq truncate-lines t)
                 (setq word-wrap nil)
                 (make-local-variable 'auto-hscroll-mode)
                 (setq auto-hscroll-mode nil))))

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; Customize icons for specific file types using Unicode or text characters

(require 'treemacs)
;; Customize Treemacs settings
(setq treemacs-width 45                    ; Set the width of the Treemacs window
      treemacs-is-never-other-window t      ; Ensure Treemacs is not selected by other-window
      treemacs-collapse-dirs 3              ; Collapse directories with less than 3 files
      treemacs-sorting 'alphabetic-asc      ; Sort files alphabetically
      treemacs-show-hidden-files t          ; Show hidden files
      treemacs-follow-after-init t          ; Follow the current file after initialization
      treemacs-filewatch-mode t)            ; Enable file watching for automatic refresh

(setq treemacs-follow-mode t) ; Follow the current file
(setq treemacs-recenter-after-file-follow t) ; Recenter after file follow

(treemacs-resize-icons 16)


;; Define the custom icon for .el files using your emacs.png image
(treemacs-define-custom-image-icon
 (expand-file-name "~/.config/emacs/assets/icons/emacs.svg")
 "el")

(treemacs-define-custom-image-icon
 (expand-file-name "~/.config/emacs/assets/icons/text-x-generic.svg")
 "txt")
(treemacs-define-custom-image-icon
 (expand-file-name "~/.config/emacs/assets/icons/text-x-tex.svg")
 "tex")



;; Define the custom icon for closed directories
(treemacs-create-icon
 :icon (propertize " "
		   'display (create-image (expand-file-name "~/.config/emacs/assets/icons/folder.svg")
					  'svg nil :ascent 'center
					  :width 16 :height 16))
 :extensions (dir-closed))

;; Define the custom icon for open directories
(treemacs-create-icon
 :icon (propertize " "
                   'display (create-image (expand-file-name "~/.config/emacs/assets/icons/folder-open.svg")
                                          'svg nil :ascent 'center
                                          :width 16 :height 16))
 :extensions (dir-open))

;; Define the custom icon for closed directories
(treemacs-create-icon
 :icon (propertize " "
		   'display (create-image (expand-file-name "~/.config/emacs/assets/icons/folder-root.svg")
					  'svg nil :ascent 'center
					  :width 16 :height 16))
 :extensions (root-open))
;; Define the custom icon for closed directories
(treemacs-create-icon
 :icon (propertize " "
		   'display (create-image (expand-file-name "~/.config/emacs/assets/icons/folder-root.svg")
					  'svg nil :ascent 'center
					  :width 16 :height 16))
 :extensions (root-closed))









(provide 'mod-neotree)

(load-theme 'elegant t)

(require 'straight)

;; -- dashboard

(use-package dashboard
  :ensure t
  )
  (setq initial-buffer-choice 'dashboard-open)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-banner-logo-title "  Emacs Is More Than A Text Editor!")
  ;;(setq dashboard-startup-banner 'logo) ;; use standard emacs logo as banner
  (setq dashboard-startup-banner "~/.config/emacs/themes/ascci.txt")  ;; use custom image as banner
  (setq dashboard-center-content nil) ;; set to 't' for centered content
  (setq dashboard-items '((recents . 5)
                          (agenda . 5 )
                          (bookmarks . 3)
                          (projects . 3)
                          (registers . 3)))
  :custom 
  (dashboard-modify-heading-icons '((recents . "file-text")
				      (bookmarks . "book")))
  :config
  (dashboard-setup-startup-hook)

;; -- modeline

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; -- evil

(setq evil-want-integration t  ;; This is optional since it's already set to t by default.
      evil-want-keybinding nil
      evil-vsplit-window-right t
      evil-split-window-below t
      evil-undo-system 'undo-redo)  ;; Adds vim-like C-r redo functionality

(use-package evil
  :ensure t)

(evil-mode 1)

(use-package evil-collection
  :ensure t)

(add-to-list 'evil-collection-mode-list 'help) ;; evilify help mode
(evil-collection-init)

(with-eval-after-load 'evil-maps
  (define-key evil-motion-state-map (kbd "SPC") nil)
  (define-key evil-motion-state-map (kbd "RET") nil)
  (define-key evil-motion-state-map (kbd "TAB") nil))
(setq org-return-follows-link  t)

;; -- fonts

(use-package all-the-icons
             :ensure t)
(use-package nerd-icons
             :ensure t)

(add-to-list 'default-frame-alist
             '(font . "Iosevka Nerd Font-13"))

(custom-set-faces
 '(font-lock-comment-face
   ((t (:family "Maple Mono" :slant italic))))
 '(font-lock-comment-delimiter-face
   ((t (:family "Maple Mono" :slant italic)))))

;; -- general keymaps

(use-package general
             :ensure t
             )

(global-set-key (kbd "C-a") 'treemacs)
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)
(global-set-key [escape] 'keyboard-escape-quit)

(general-evil-setup)

;; set up 'SPC' as the global leader key
(general-create-definer abhi-leaderkey
                        :states '(normal insert visual emacs)
                        :keymaps 'override
                        :prefix "SPC" ;; set leader
                        :global-prefix "M-SPC") ;; access leader in insert mode

(abhi-leaderkey
  "b b" '(switch-to-buffer :which-key "Switch buffer")

  "d" '(:ignore t :wk "Dired")
  "d d" '(dired :wk "Open dired")

  "e r" '(eval-region :wk "Eval Region")
  "e b" '(eval-buffer :wk "Eval Buffer")

  "f" '(:ignore t :wk "Files")   
  "f f" '(find-file :which-key "Find file")
  "f o" '(org-roam-node-find :wk "Find org roam nodes")

  "l" '(:ignore t :wk "LaTeX")   
  "l l" '(org-latex-export-as-latex :wk "Org to LaTeX Export")
  "l p" '(org-latex-export-to-pdf :wk "Org to PDF Export")

  "n" '(:ignore t :wk "Neotree")
  "n n" '(neotree-toggle :wk "Toggle neotree file viewer")

  "o" '(:ignore t :wk "Org Prefix")
  "o ." '(completion-at-point :wk "Completion at point")
  "o t" '(org-roam-buffer-toggle :wk "Org roam buffer toggle")
  "o f" '(org-roam-node-find :wk "org-roam-node-find")
  "o g" '(org-roam-graph :wk "org-roam-graph")
  "o i" '(org-roam-node-insert :wk "Org roam buffer toggle")
  "o c" '(org-roam-capture :wk "org-roam-capture")
  "o d" '(org-roam-dailies-capture-today :wk "org-roam-dailies-capture-today")


  "t" '(:ignore t :wk "Treemacs Prefix")
  "t a" '(treemacs-add-and-display-current-project-exclusively :wk "Treemacs add and display current project exclusively")
  "t t" '(treemacs :wk "Toggle Treemacs")
  "t n" '(neotree-toggle :wk "Toggle Neotree")
  )

;; -- org mode

(add-hook 'org-mode-hook 'org-indent-mode)

(require 'org-modern)
(global-org-modern-mode 1)




; org-mode to hide the emphasis markup (e.g. /.../ for italics, *...* for bold, etc.):
(setq org-hide-emphasis-markers t)

(custom-set-faces
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1)))))

(require 'org-tempo)

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "/home/abhi/documents/org-roam/"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))


;; -- spacious padding  

(require 'spacious-padding)

(setq spacious-padding-widths
      '( :internal-border-width 35 ;; -- refers to the space between the boundaries of the Emacs frame and where the text contents start.
         :header-line-width 4
         :mode-line-width 5
         :tab-width 4
         :right-divider-width 30
         :scroll-bar-width 8
         :fringe-width 8))

(setq spacious-padding-subtle-mode-line
      `( :mode-line-active 'default
         :mode-line-inactive vertical-border))

(spacious-padding-mode 1)

;; -- auto completion

(use-package embark-consult
  :ensure t
  )

;; -- straight example

(use-package el-patch
  :straight (el-patch :type git :host github :repo "radian-software/el-patch"))

;; -- magit 

(use-package magit
  :ensure t
  )
;  :config
;  (setq magit-commit-arguments '("--verbose")))

(add-to-list 'default-frame-alist '(alpha-background . 100)) ; For all new frames henceforth

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;(use-package org-roam
;  :straight t)

(use-package ispell
  :ensure t
  )

;; -- rainbow mode

(use-package rainbow-mode
  :ensure t
  )

(add-hook 'prog-mode-hook 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'html-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'js-mode-hook 'rainbow-mode) 
(add-hook 'org-mode-hook 'rainbow-mode)

(defun my-rainbow-mode-settings ()
  "Custom settings for rainbow-mode."
  (setq rainbow-mode t))

(add-hook 'rainbow-mode-hook 'my-rainbow-mode-settings)

;; -- rainbow delimiters

(use-package rainbow-delimiters
  :ensure t
  )

;; Enable rainbow-delimiters-mode in relevant modes
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'org-mode-hook #'rainbow-delimiters-mode)

;; Customize rainbow-delimiters appearance
(custom-set-faces
 '(rainbow-delimiters-base-face ((t (:weight bold ))))  
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#a6e3a1" :weight bold ))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#cba6f7" :weight bold ))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#f9e2af" :weight bold ))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#89dceb" :weight bold ))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#eba0ac" :weight bold ))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#74c7ec" :weight bold ))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#a6e3a1" :weight bold )))) 
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#cba6f7" :weight bold ))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#f9e2af" :weight bold ))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#d20f39" :weight bold ))))
 '(rainbow-delimiters-mismatched-face ((t (:foreground "#d20f39" :weight bold ))))
 '(rainbow-delimiters-base-error-face ((t (:foreground "#d20f39" :weight bold ))))
)
  
  



(require 'mod-auto-comp)
(require 'mod-org-tex)
(require 'mod-neotree)
(require 'mod-wkey)

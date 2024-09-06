(load-theme 'elegant t)

(require 'mod-straight)

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
  
  



(require 'mod-fonts)
(require 'mod-keybindings)
;(require 'mod-org)
;(require 'mod-projectile)
(require 'mod-auto-comp)
(require 'mod-org-tex)
(require 'mod-neotree)
(require 'mod-wkey)

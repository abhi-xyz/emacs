(add-to-list 'default-frame-alist '(alpha-background . 100)) ; For all new frames henceforth

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

(require 'rainbow-mode)
(require 'ispell)

;; Enable rainbow-mode for CSS and other color-code files
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'html-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'js-mode-hook 'rainbow-mode)  ;; Add more hooks as needed

;; Optionally, you can set a custom colorize function
(defun my-rainbow-mode-settings ()
  "Custom settings for rainbow-mode."
  (setq rainbow-mode t))

(add-hook 'rainbow-mode-hook 'my-rainbow-mode-settings)


(require 'rainbow-delimiters)

;; Enable rainbow-delimiters-mode in relevant modes
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'org-mode-hook #'rainbow-delimiters-mode)

;; Customize rainbow-delimiters appearance
(custom-set-faces
 '(rainbow-delimiters-base-face ((t (:weight bold ))))  
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#a6e3a1" :weight bold ))))  ;; Adjust colors as needed
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#cba6f7" :weight bold ))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#f9e2af" :weight bold ))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#89dceb" :weight bold ))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#eba0ac" :weight bold ))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#74c7ec" :weight bold ))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#a6e3a1" :weight bold )))) 
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#cba6f7" :weight bold ))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#f9e2af" :weight bold ))))
 '(rainbow-delimiters-mismatched-face ((t (:foreground "#d20f39" :weight bold :slant italic ))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#d20f39" :weight bold  :slant italic ))))
 '(rainbow-delimiters-base-error-face ((t (:foreground "#d20f39" :weight bold  :slant italic ))))
 ;; Add more depth customizations as needed
)
  
 




(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(require 'all-the-icons)
(require 'nerd-icons)

(add-to-list 'load-path "~/.emacs.d/mods/")
(add-to-list 'load-path "~/.emacs.d/mods/svg-lib/")
(add-to-list 'load-path "~/.emacs.d/mods/nano-sidebar/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/nano-theme/")

(load-theme 'elegant t)
; -- By default, Emacs creates automatic backups of files in their original directories, such “file.el” and the backup “file.el~”. This leads to a lot of clutter, so let’s tell Emacs to put all backups that it creates in the TRASH directory.
(setq backup-directory-alist '((".*" . "~/.local/share/Trash/files")))


(require 'nano-modeline)
; -- https://github.com/rougier/nano-modeline
(add-hook 'prog-mode-hook            #'nano-modeline-prog-mode)
(add-hook 'text-mode-hook            #'nano-modeline-text-mode)
(add-hook 'org-mode-hook             #'nano-modeline-org-mode)
(add-hook 'pdf-view-mode-hook        #'nano-modeline-pdf-mode)
(add-hook 'mu4e-headers-mode-hook    #'nano-modeline-mu4e-headers-mode)
(add-hook 'mu4e-view-mode-hook       #'nano-modeline-mu4e-message-mode)
(add-hook 'elfeed-show-mode-hook     #'nano-modeline-elfeed-entry-mode)
(add-hook 'elfeed-search-mode-hook   #'nano-modeline-elfeed-search-mode)
(add-hook 'term-mode-hook            #'nano-modeline-term-mode)
(add-hook 'xwidget-webkit-mode-hook  #'nano-modeline-xwidget-mode)
(add-hook 'messages-buffer-mode-hook #'nano-modeline-message-mode)
(add-hook 'org-capture-mode-hook     #'nano-modeline-org-capture-mode)
(add-hook 'org-agenda-mode-hook      #'nano-modeline-org-agenda-mode)
; -- To make a specific mode the default one
(nano-modeline-text-mode t)


(require 'vertico)
(vertico-mode 1)
;;(vertico-cycle t) ;; Enable cycling for `vertico-next/previous'
(require 'savehist)
  (savehist-mode)

(require 'rainbow-mode)
  (add-hook 'prog-mode-hook 'rainbow-mode)
;(require 'org-margin)
;(add-hook 'org-mode-hook 'org-margin-mode)
;(org-margin-mode 1)


(require 'book-mode)
(add-hook 'org-mode-hook 'book-mode)

;; Expands to: (elpaca evil (use-package evil :demand t))
    (setq evil-want-integration t  ;; This is optional since it's already set to t by default.
          evil-want-keybinding nil
          evil-vsplit-window-right t
          evil-split-window-below t
          evil-undo-system 'undo-redo)  ;; Adds vim-like C-r redo functionality
(require 'evil)
    (evil-mode)

(require 'evil-collection)
  ;; Do not uncomment this unless you want to specify each and every mode
  ;; that evil-collection should works with.  The following line is here 
  ;; for documentation purposes in case you need it.  
  ;; (setq evil-collection-mode-list '(calendar dashboard dired ediff info magit ibuffer))
  (add-to-list 'evil-collection-mode-list 'help) ;; evilify help mode
  (evil-collection-init)


;; Using RETURN to follow links in Org/Evil 
;; Unmap keys in 'evil-maps if not done, (setq org-return-follows-link t) will not work
(with-eval-after-load 'evil-maps
  (define-key evil-motion-state-map (kbd "SPC") nil)
  (define-key evil-motion-state-map (kbd "RET") nil)
  (define-key evil-motion-state-map (kbd "TAB") nil))
;; Setting RETURN key in org-mode to follow links
  (setq org-return-follows-link  t)


(require 'dashboard)
  (setq initial-buffer-choice 'dashboard-open)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-banner-logo-title "  Emacs Is More Than A Text Editor!")
  ;;(setq dashboard-startup-banner 'logo) ;; use standard emacs logo as banner
  (setq dashboard-startup-banner "~/.emacs.d/themes/ascci.txt")  ;; use custom image as banner
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



(global-set-key [escape] 'keyboard-escape-quit)

(require 'which-key)
    (which-key-mode 1)
  (setq which-key-side-window-location 'bottom
	  which-key-sort-order #'which-key-key-order-alpha
	  which-key-allow-imprecise-window-fit nil
	  which-key-sort-uppercase-first nil
	  which-key-add-column-padding 1
	  which-key-max-display-columns nil
	  which-key-min-display-lines 6
	  which-key-side-window-slot -10
	  which-key-side-window-max-height 0.25
	  which-key-idle-delay 0.8
	  which-key-max-description-length 25
	  which-key-allow-imprecise-window-fit nil
	  which-key-separator " → " )


(require 'mod-fonts)
(require 'mod-keybindings)
(require 'mod-org)
(require 'mod-projectile)
;(require 'mod-comp)
(require 'mod-auto-comp)
(require 'mod-org-tex)
(require 'mod-neotree)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "#1e1e2e" :foreground "#ffffff" :box nil))))
 '(mode-line-inactive ((t (:background "#1e1e2e" :foreground "#a0a8b7" :box nil))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1)))))




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7144add793051e778fac56612685a757d15c48486cf61087460942a44a0f6c67" "da2b8b0f21124e197775c60d5e7cad77c724e595556b3f14eaf9df9df68e2af0" "bb8b0b9130b94122495af4af7941de888dbd51c659d8c40c473e66a659a37e9f" "a6af24ac3b2112c4aa64cf508f39c9b5b2b0df732a322e0f17f388504c306f63" "92f38a3c6e668ba9514ceb943a21f74e4a692569c2684ead4309e79f60ed221f" "39a9d2446e7356e7fad83c3a84283f3bde319cbaac2caa75df3f2277ef69f69d" "1bbd8753188cf68fcd228d983543b2084c73a0e1076f08234c17f73f058d7272" "c650a74280e8ce4ae4b50835b7a3bc62aeffa202ffea82260e529f0a69027696" "a060c0315a44bee19ac87414571131c8c8fad7a940bda0102da67410e66833aa" "db6e88dc8e4a3381e5b24a0a890f20f6f233564f690e1066c3b9aa8d7a19a6db" "f2465988c0b6f7a8a917ed27081985b5334a6ca92b0bfac783adc0c12e58ed54" "e7820b899036ae7e966dcaaec29fd6b87aef253748b7de09e74fdc54407a7a02" "4dcf06273c9f5f0e01cea95e5f71c3b6ee506f192d75ffda639d737964e2e14e" "1781e8bccbd8869472c09b744899ff4174d23e4f7517b8a6c721100288311fa5" "de8f2d8b64627535871495d6fe65b7d0070c4a1eb51550ce258cd240ff9394b0" "763bf89898a06b03f7b65fbc29857a1c292e4350246093702fdbd6c4e46e2cf0" default)))


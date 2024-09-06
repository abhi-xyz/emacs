
(setq package-enable-at-startup nil)

(delete-selection-mode 1)    ;; You can select text and delete it by typing.
(electric-indent-mode -1)    ;; Turn off the weird indenting that Emacs does by default.
(electric-pair-mode 1)       ;; Turns on automatic parens pairing
;; The following prevents <> from auto-pairing when electric-pair-mode is on.
;; Otherwise, org-tempo is broken when you try to <s TAB...
(add-hook 'org-mode-hook (lambda ()
           (setq-local electric-pair-inhibit-predicate
                   `(lambda (c)
                  (if (char-equal c ?<) t (,electric-pair-inhibit-predicate c))))))
(global-auto-revert-mode t)  ;; Automatically show changes if the file has changed
(global-display-line-numbers-mode 1) ;; Display line numbers
(global-visual-line-mode t)  ;; Enable truncated lines
(menu-bar-mode -1)           ;; Disable the menu bar 
(scroll-bar-mode -1)         ;; Disable the scroll bar
(tool-bar-mode -1)           ;; Disable the tool bar
(setq org-edit-src-content-indentation 0) ;; Set src block automatic indent to 0 instead of 2.

;(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(global-hl-line-mode 1)


(add-to-list 'load-path "~/.config/emacs/mods/")
(add-to-list 'load-path "~/.config/emacs/mods/svg-lib/")
(add-to-list 'load-path "~/.config/emacs/mods/nano-sidebar/")
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes/")
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes/nano-theme/")

(setq backup-directory-alist '((".*" . "~/.local/share/Trash/files")))

(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

;; Set eln-cache dir
(when (boundp 'native-comp-eln-load-path)
  (startup-redirect-eln-cache (expand-file-name "~/.local/share/emacs/eln-cache/" user-emacs-directory)))


;; Update `straight.el` to use the new directory
(setq straight-base-dir (expand-file-name "~/.local/share/emacs"))


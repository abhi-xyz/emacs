(require 'all-the-icons)
(require 'nerd-icons)


;; --
(add-to-list 'default-frame-alist
             '(font . "Iosevka Nerd Font-13"))

;;; --
;;; -- available attributes
;;; --
; :foreground "blue"
; :background "lightgray"
; :weight 'bold
; :slant 'italic
; :underline t
; ;; or
; :underline "red"
; :overline t
; :strike-through t
; :box t
; ;; or
; :box '(:line-width 1 :color "blue")
; :inverse-video t
; :height 1.2
; :width 'expanded
; :family "Maple Mono"
; :inherit 'default

;(set-face-attribute 'default nil :family "Maple Mono-16")

(custom-set-faces
 '(font-lock-comment-face
   ((t (:family "Maple Mono" :slant italic))))
 '(font-lock-comment-delimiter-face
   ((t (:family "Maple Mono" :slant italic)))))
;;
;; (custom-set-faces
;;  '(font-lock-variable-name-face
;;    ((t (:family "Maple Mono")))))
;;
;; (custom-set-faces
;;  '(font-lock-function-name-face
;;    ((t (:family "Maple Mono" :weight bold)))))
;;
;; (custom-set-faces
;;  '(font-lock-string-face
;;    ((t (:family "Maple Mono" :slant italic)))))
;;
;; (custom-set-faces
;;  '(font-lock-keyword-face
;;    ((t (:family "Maple Mono" :weight bold)))))
;;
;; (custom-set-faces
;;  '(font-lock-type-face
;;    ((t (:family "Maple Mono" :weight bold)))))
;;
;; (custom-set-faces
;;  '(font-lock-constant-face
;;    ((t (:family "Maple Mono")))))
;;
;; (custom-set-faces
;;  '(font-lock-type-face
;;    ((t (:family "Maple Mono" :weight bold)))))
;;
;; (custom-set-faces
;;  '(font-lock-constant-face
;;    ((t (:family "Maple Mono")))))
;;
;; (custom-set-faces
;;  '(font-lock-warning-face
;;    ((t (:family "Maple Mono" :weight bold :foreground "Red")))))
;;
;; (custom-set-faces
;;  '(font-lock-doc-face
;;    ((t (:family "Maple Mono" :slant italic)))))
;;
;; (custom-set-faces
;;  '(font-lock-preprocessor-face
;;    ((t (:family "Maple Mono" :weight bold)))))
;;
;; (custom-set-faces
;;  '(font-lock-number-face
;;    ((t (:family "Maple Mono")))))
;;
;; (custom-set-faces
;;  '(font-lock-operator-face
;;    ((t (:family "Maple Mono")))))
;;
;; (custom-set-faces
;;  '(bold
;;    ((t (:family "Maple Mono" :weight bold)))))
;;
;; (custom-set-faces
;;  '(italic
;;    ((t (:family "Maple Mono" :slant italic)))))
;;
;; (custom-set-faces
;;  '(italic
;;    ((t (:family "Maple Mono" :slant italic)))))
;;
;; (custom-set-faces
;;  '(header-line
;;    ((t (:family "Maple Mono" :weight bold)))))
;;
;; (custom-set-faces
;;  '(mode-line
;;    ((t (:family "Maple Mono" :weight bold)))))
;;
;; (custom-set-faces
;;  '(line-number
;;    ((t (:family "Maple Mono" :slant italic)))))
;;
;; (custom-set-faces
;;  '(link
;;    ((t (:family "Maple Mono" :underline t)))))
;;
;; (custom-set-faces
;;  '(region
;;    ((t (:family "Maple Mono" :background "#555555")))))
;;
;; (custom-set-faces
;;  '(region
;;    ((t (:family "Maple Mono" :background "#555555")))))
;;
;; (custom-set-faces
;;  '(tooltip
;;    ((t (:family "Maple Mono" :background "#333333" :foreground "white")))))
;;
;; (custom-set-faces
;;  '(show-paren-match
;;    ((t (:family "Maple Mono" :background "#44475a" :weight bold)))))
;;
;; (custom-set-faces
;;  '(show-paren-mismatch
;;    ((t (:family "Maple Mono" :background "#ff5555" :foreground "white")))))
;;
;; (custom-set-faces
;;  '(shadow
;;    ((t (:family "Maple Mono" :slant italic)))))
;;
;; (custom-set-faces
;;  '(minibuffer-prompt
;;    ((t (:family "Maple Mono" :weight bold)))))
;;
;; (custom-set-faces
;;  '(cursor
;;    ((t (:background "orange")))))
;;
;; (custom-set-faces
;;  '(fringe
;;    ((t (:family "Maple Mono")))))
;;
;; (custom-set-faces
;;  '(fringe
;;    ((t (:family "Maple Mono")))))
;;
;; (custom-set-faces
;;  '(trailing-whitespace
;;    ((t (:family "Maple Mono" :background "red")))))
;;
;; (custom-set-faces
;;  '(isearch
;;    ((t (:family "Maple Mono" :background "#44475a")))))
;;
;; (custom-set-faces
;;  '(lazy-highlight
;;    ((t (:family "Maple Mono" :background "#44475a" :foreground "white")))))
;;
;; (custom-set-faces
;;  '(vertical-border
;;    ((t (:family "Maple Mono" :foreground "#444444")))))
;;
;;
;; (custom-set-faces
;;  '(vertical-border
;;    ((t (:family "Maple Mono" :foreground "#444444")))))
;;
;; (custom-set-faces
;;  '(info-title-1
;;    ((t (:family "Maple Mono" :weight bold :height 1.5)))))
;;
;; (custom-set-faces
;;  '(org-level-1
;;    ((t (:family "Maple Mono" :weight bold :height 1.3))))
;;  '(org-level-2
;;    ((t (:family "Maple Mono" :weight bold :height 1.2))))
;;  '(org-level-3
;;    ((t (:family "Maple Mono" :weight bold :height 1.1))))
;;  '(org-level-4
;;    ((t (:family "Maple Mono" :weight bold))))
;;  '(org-document-title
;;    ((t (:family "Maple Mono" :weight bold :height 1.5))))
;;  '(org-block
;;    ((t (:family "Maple Mono" :background "#2e3440")))))
;;
;; (custom-set-faces
;;  '(dired-directory
;;    ((t (:family "Maple Mono" :weight bold))))
;;  '(dired-flagged
;;    ((t (:family "Maple Mono" :foreground "red")))))
;;
;; (custom-set-faces
;;  '(compilation-error
;;    ((t (:family "Maple Mono" :foreground "red"))))
;;  '(compilation-warning
;;    ((t (:family "Maple Mono" :foreground "yellow"))))
;;  '(compilation-info
;;    ((t (:family "Maple Mono" :foreground "green")))))
;;
;; (custom-set-faces
;;  '(error
;;    ((t (:family "Maple Mono" :foreground "red" :weight bold)))))
;;
;;


(provide 'mod-fonts)

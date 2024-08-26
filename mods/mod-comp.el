

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
;; Set the minimum prefix length for completion to 1
(setq company-minimum-prefix-length 1)

;; Optionally, you might want to adjust the delay for showing completion suggestions
(setq company-idle-delay 0.0)
(add-to-list 'company-backends 'company-files)

;; Configure Company backends
(setq company-backends '((company-dabbrev company-files)))

;; Customize completion options
(setq company-dabbrev-minimum-length 1)
(setq company-dabbrev-ignore-case t)
(setq company-idle-delay 0.0) ;; Show completions immediately


(require 'company-fuzzy)

;(add-hook 'company-mode 'company-fuzzy-mode)
;  (setq company-fuzzy-sorting-backend 'flx
;        company-fuzzy-reset-selection t
;        company-fuzzy-prefix-on-top nil
;        company-fuzzy-trigger-symbols '("." "->" "<" "\"" "'" "@"))
;
(global-company-fuzzy-mode 1)

; -----------------------------------------------------------------
; -----------------------------------------------------------------

(require 'yasnippet)
(yas-global-mode 1) ;; Enable yasnippet globally

;; Optional: Specify the directory for your custom snippets
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))

;; Optional: Configure snippet expansion key
(define-key yas-minor-mode-map (kbd "TAB") 'yas-expand)








(provide 'mod-comp)

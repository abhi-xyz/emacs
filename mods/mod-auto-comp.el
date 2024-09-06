(use-package vertico
  :ensure t
  )

(vertico-mode 1)
;;(vertico-cycle t) ;; Enable cycling for `vertico-next/previous'
(require 'savehist)
  (savehist-mode)

(use-package marginalia
  :ensure t
  )

(marginalia-mode)
(use-package embark
  :ensure t
  )

(global-set-key (kbd "C-;") 'embark-act)
(global-set-key (kbd "C-h b") 'embark-bindings)
(use-package consult
  :ensure t
  )

(global-set-key (kbd "C-s") 'consult-line)
(global-set-key (kbd "C-x b") 'consult-buffer)
(global-set-key (kbd "C-x r b") 'consult-bookmark)
(use-package orderless
  :ensure t
  )

(setq completion-styles '(orderless)
      orderless-matching-styles '(orderless-literal orderless-regexp orderless-prefixes)
      orderless-component-separator " ")  ;; Separator for Orderless
(use-package corfu
  :ensure t
  )

(global-corfu-mode)
(setq corfu-cycle t
      corfu-auto t
      corfu-auto-delay 0
      corfu-auto-prefix 1
      corfu-echo-documentation t
      corfu-quit-at-boundary t
      corfu-quit-no-match 't)  ;; Configure Corfu to respect separators
(require 'corfu-popupinfo
  )

(corfu-popupinfo-mode)
(setq corfu-popupinfo-delay 0.1)

(defun my/corfu-mode-setup ()
  "Custom setup for Corfu mode."
  (setq-local corfu-auto t
              corfu-auto-delay 0
              corfu-auto-prefix 1
              corfu-quit-at-boundary nil
              corfu-quit-no-match 't))

(add-hook 'prog-mode-hook #'my/corfu-mode-setup)
(add-hook 'org-mode-hook #'my/corfu-mode-setup)
(add-hook 'text-mode-hook #'my/corfu-mode-setup)
(use-package cape
  :ensure t
  )

(add-to-list 'completion-at-point-functions #'cape-dabbrev)  ;; Buffer word completion
(add-to-list 'completion-at-point-functions #'cape-file)     ;; File path completion
(add-to-list 'completion-at-point-functions #'cape-elisp-block)     ;; File path completion

;; Ensure completion-at-point-functions includes the cape functions
(setq completion-at-point-functions
      (append (list #'cape-dabbrev
                    #'cape-elisp-block
                    #'cape-file)
              completion-at-point-functions))


(custom-set-faces
 '(corfu-default ((t (:background "#181825" :foreground "#D8DEE9"))))
 '(corfu-current ((t (:background "#dce0e8" :foreground "#11111b"))))
 '(corfu-bar ((t (:background "#f38ba8" :foreground "#11111b")))) ;  "The background color is used for the scrollbar indicator."
 '(corfu-border ((t (:background "#11111b" :foreground "#11111b")))) ;  "The background color used for the thin border."

)

;; Configure cape-dict with a custom dictionary path (example)
(setq cape-dict-directory "~/.emacs.d/dict/irg.dict")

(defun my-dictionary-completion ()
  "Dictionary-based completion using cape-dict with custom path."
  (cape-dict))

(setq-local completion-at-point-functions
            (list (cape-capf-super #'cape-dabbrev #'my-dictionary-completion)))


(provide 'mod-auto-comp)


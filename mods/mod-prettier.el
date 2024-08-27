
(require 'rainbow-mode)
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

(require 'rainbow-delimiters)

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
  
  
 

(provide 'mod-prettier)

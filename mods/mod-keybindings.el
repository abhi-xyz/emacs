; -------------------------------
; Keys
; -------------------------------
(use-package general
  :ensure t
  )



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

;  (abhi/leader-keys
 ;   "." '(find-file :wk "Find file")
  ;  "TAB TAB" '(comment-line :wk "Comment lines")



(global-set-key (kbd "C-a") 'treemacs)

(provide 'mod-keybindings)

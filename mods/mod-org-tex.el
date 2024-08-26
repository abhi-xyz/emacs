; -------------------------------
; -- org publish
; -------------------------------


(require 'auctex)
(require 'tex)
(push (list 'output-pdf "Zathura") TeX-view-program-selection)
;(push (list 'output-pdf "Zathura") Tex-view-program-selection)

(setq org-publish-use-timestamps-flag nil)
(setq org-export-with-broken-links t)
(setq org-publish-project-alist
      '(("website"
         :base-directory "~/web/website/"
         :base-extension "org"
         :publishing-directory "~/web/website/"
         :recursive t
         :exclude "org-html-themes/.*"
         :publishing-function org-html-publish-to-html
         :headline-levels 4             ; Just the default for this project.
         :auto-preamble t)))

(setq org-publish-project-alist
      '(
        ;; New project to export Org files to LaTeX
        ("tex"
         :base-directory "~/documents/org/"      ; Directory with Org files
         :base-extension "org"                   ; Only process .org files
         :publishing-directory "~/documents/org/" ; Output directory for LaTeX files
         :recursive t                            ; Include subdirectories
         :publishing-function org-latex-publish-to-pdf ; Export to LaTeX (.tex)
         )))                     ; Automatically include preamble



(require 'ox-latex)  ; Ensure org-latex export is loaded

(with-eval-after-load 'ox-latex
(add-to-list 'org-latex-classes
             '("org-plain-latex"
               "\\documentclass{article}
           [NO-DEFAULT-PACKAGES]
           [PACKAGES]
           [EXTRA]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))

(provide 'mod-org-tex)

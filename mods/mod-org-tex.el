
; -- org publish

(use-package auctex
  :ensure t
  )
(require 'tex)

(push (list 'output-pdf "Zathura") TeX-view-program-selection)

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


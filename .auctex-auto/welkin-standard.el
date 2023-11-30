(TeX-add-style-hook
 "welkin-standard"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "chapters/3-spec"
    "article"
    "art10"
    "standalone"
    "titling"
    "outlines"
    "csquotes"
    "tabularx"
    "hyperref"
    "simplebnf"
    "amsfonts"
    "amsthm"
    "array"
    "fontenc")
   (LaTeX-add-amsthm-newtheorems
    "definition"
    "theorem"
    "lemma"))
 :latex)


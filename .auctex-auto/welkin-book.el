(TeX-add-style-hook
 "welkin-book"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "leqno")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("standalone" "subpreambles=true")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "chapters/1-intro"
    "chapters/2-background"
    "chapters/3-cflt"
    "chapters/4-spec"
    "chapters/5-complexity"
    "book"
    "bk10"
    "standalone"
    "outlines"
    "csquotes"
    "hyperref"
    "simplebnf"
    "amsmath"
    "amsfonts")
   (LaTeX-add-environments
    "theorem"))
 :latex)


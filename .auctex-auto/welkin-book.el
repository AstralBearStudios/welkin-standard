(TeX-add-style-hook
 "welkin-book"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("book" "leqno")))
   (TeX-run-style-hooks
    "latex2e"
    "chapters/1-intro"
    "chapters/2-background"
    "chapters/3-cflt"
    "chapters/4-spec"
    "chapters/5-complexity"
    "book"
    "bk10"
    "titling"
    "csquotes"))
 :latex)


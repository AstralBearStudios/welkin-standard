(TeX-add-style-hook
 "4-spec"
 (lambda ()
   (TeX-add-symbols
    "chars"
    "numbers"
    "term")
   (LaTeX-add-labels
    "ch:spec"))
 :latex)


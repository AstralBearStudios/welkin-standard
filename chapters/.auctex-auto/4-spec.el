(TeX-add-style-hook
 "4-spec"
 (lambda ()
   (TeX-add-symbols
    "chars"
    "bytes"
    "numbers"
    "term")
   (LaTeX-add-labels
    "ch:spec"))
 :latex)


(TeX-add-style-hook
 "3-spec"
 (lambda ()
   (TeX-add-symbols
    "chars"
    "numbers"
    "whitespaces"
    "reserved"
    "strings"
    "term"
    "terms"
    "delimiters"
    "encoding"
    "decoding"
    "scope")
   (LaTeX-add-labels
    "ch:spec"))
 :latex)


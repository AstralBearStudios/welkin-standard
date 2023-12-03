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
    "escapes"
    "encoding"
    "decoding"
    "scope"
    "arraystretch")
   (LaTeX-add-labels
    "ch:spec"))
 :latex)


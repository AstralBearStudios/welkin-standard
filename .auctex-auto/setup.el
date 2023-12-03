(TeX-add-style-hook
 "setup"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("DejaVuSansMono" "scaled")))
   (TeX-run-style-hooks
    "standalone"
    "titling"
    "outlines"
    "csquotes"
    "makecell"
    "hyperref"
    "simplebnf"
    "amsfonts"
    "amsthm"
    "tabularx"
    "array"
    "tikz-cd"
    "fontenc"
    "DejaVuSansMono")
   (LaTeX-add-environments
    "definition"
    "theorem"
    "lemma"))
 :latex)


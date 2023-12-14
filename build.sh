#!/usr/bin/env sh

# Directly modified from Metamath
run_pdflatex () {
  pdflatex -halt-on-error -interaction=nonstopmode "$1"
}

run_pdflatex "$1.tex" && bibtex "$1" && run_pdflatex "$1.tex" && run_pdflatex "$1.tex"

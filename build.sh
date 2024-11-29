#!/bin/sh

files=(
    "index"
    "abstract"
    "introduction"
    "basis"
    "syntax"
    "semantics"
    "bootstrap"
)

rm -f welkin-standard.html

for file in ${files[@]};
    do cat "source/$file.creole" | sed "s/\`\`/{{{}}}/" | pandoc --from creole --to html --output "document/$file.html";
    cat "document/$file.html" >> welkin-standard.html
done

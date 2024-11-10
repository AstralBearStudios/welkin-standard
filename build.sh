#!/bin/sh

cd source
for file in *.creole;
    do cat "$file" | sed "s/\`\`/{}/" | pandoc --from creole --to html;
done

⚠ **Warning: This repository is a WIP. This standard is in its early stages and does not have substantial text. Please wait to submit any issues, and stay tuned for updates.**

*Update: three major changes to this repository.
- Updates will be put into a changelog for easier access. Please see CHANGELOG.md for future reference. Dates will be written in ISO notation yyyy-mm-dd to minimize confusion. If a new format is chosen in the future, it will be put into this document first.
- The repository will now be `welkin-standard` instead of `welkin-book`. It will only store the official Welkin Standard, as well as artifacts and source files.
Development on the Welkin Book will be postponed indefinitely.
- Official documents will be written in two formats: Plain Text and [Typst](https://github.com/typst/typst). This was carefully decided for one major reason: the standard needs to have small source files to be self-contained. Every word needs to be tracked and be easily inspected. To satisfy this goal, formats are divided into two groups. 
    - `welkin-bootstrap` (Text): this will be a self-contained file that contains the entire specification with only US-ASCII. Artifacts will be available in separate files as a reference. The majority of this file will include Welkin (WIP).
    - Typset Standard (PDF, HTML): typst will generate these formats. The standard will create a carefully chosen subset for Typst and maximize backwards compatiblity. Any artifacts will be copied identically. For now, HTML documents will be produced using pandoc, but typst will be used alone once [HTML exports](https://github.com/typst/typst/issues/721) are supported.

This repository stores the **Welkin Standard.** It formally specifies the syntax and semantics of Welkin. *A high-level specification is provided for parsers, but machine specific details are beyond the scope of this standard. For these details, see Stratus (TBD).* 

Welkin is a customizable language to store information from any subject matter. All Welkin files are compiled into the same data structure, with the aim to *determine the underlying structure of any subject.* To do so, Welkin compares the structure of different notes with this data structure. For instance, a musician could encode their musical development and compositions into a Welkin file and compare their results to a mathematician's theory. In this regard, Welkin's ultimate goal is to provide a Universal Information Format for *all* information, including annotations, notes, and entire blueprints.

# Contents 

## Documents

- **[welkin-standard.txt](welkin-standard.txt)** is the Plain Text for the Welkin Standard. This is the most minimal document chosen
and can be directly embeded into a machine.
- **[welkin-standard.pdf](welkin-standard.pdf)** is the PDF document for the Welkin Standard.
- **grammar(grammar.txt)** contains the Welkin grammar.

## Source code
- **[welkin-standard.typst](welkin-standard.typst)** is the main typst file.
- **[typst-subset.txt](typst-subset.txt)** includes **every** feature used for this standard. Any breaking changes are closely monitored.

# Generating Documents
Both of these commands are included in the [Makefile](Makefile).

## PDF
You will need:
- [typst](https://github.com/typst/typst)
- [Stix Two Math](https://www.stixfonts.org/)

Run
```bash
typst compile welkin-standard.typst --format pdf
```

## HTML
You will need:
- [pandoc](https://github.com/jgm/pandoc)
- [Stix Two Math](https://www.stixfonts.org/)

Run
```bash
pandoc --from typst --to html5 --no-highlight welkin-standard.pdf --output welkin-standard.html
```

# Copyright and License

## Source Files

welkin-standard.typst
(c) 2023 Oscar Bender-Stone.

The Typst source files are licensed under the MIT license, located in the directory LICENSES.

## The Welkin Standard

*The Welkin Standard* (c) 2023 by Oscar Bender-Stone.

*The Welkin Standard* is licensed under the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

[![img](http://i.creativecommons.org/l/by/3.0/80x15.png)](http://creativecommons.org/licenses/by/3.0/deed)

You should have received a copy of the license along with this
work. If not, see <http://creativecommons.org/licenses/by-sa/4.0/>.

# Citation
Please note that this book is still a work in progress! No official versioning scheme has been used because this project is heavily in development.
Most importantly, this means that there may be more authors; this will **not** be the finalized citation.

## Welkin Standard

``` bibtex
@Article{
author = {Oscar E. Bender-Stone},
title = {The Welkin Standard}
year = {2023},
url = {https://github.com/AstralBearStudios/welkin-book/main/tree/welkin-book.pdf},
}
```





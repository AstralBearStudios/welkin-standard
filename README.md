⚠ **Warning: This repository is a WIP. This book is in its early stages and does not have substantial text. Please wait to submit any issues, and stay tuned for updates.**

This repository stores *Welkin: An Information Language*, also known as the Welkin Book. It provides a list of problems surrounding organizing ideas, Welkin's approach to solving these problems, and a formal specification for several key components.

*Update on November 15, 2023: I have decided not to include CFLT into this book. I will explain more details on [my blog.](https://logsofhumanisticlogic.wordpress.com) For the time being, it is possible to express any concept from First Order Logic. In time, I will prove that you can do more, and I will use Welkin to do so!*

Welkin is a customizable language to store information from any subject matter. All Welkin files are compiled into the same data structure, with the aim to *determine the underlying structure any subject.* To do so, Welkin compares the structure of different notes with this data structure. For instance, a musician could encode their musical devleopment and compositions into a Welkin file and compare their results to a mathematician's theory. In this regard, Welkin's ultimate goal is to provide a Universal Information Format for *all* information, including annotations, notes, and entire blueprints.

It is possible to manually parse and evaluate the resulting .welkin files, but for ease, long-term use, and large scale projects, there is a program can manage them. The current implementation of this program is [PyWelkin (WIP)](https://github/astral-bear/pywelkin).


# Contents 

## Documents

- **[welkin-book.pdf](welkin-book.pdf)** contains the complete guide on Welkin, including some major results. It is the best place to start to get an overall understanding of Welkin and different ways to use it. Note, however, that this is not a complete characterization of Welkin's capabilities.
- **[welkin-standard.pdf](welkin-standard.pdf)** contains Chapter 3 on the Welkin Standard. This is a must-have for official implementations.
- **[grammars](grammars)** contains text based versions of Welkin grammars. While these are listed out in the standard, [grammars](grammars) is the definitive source for writing an official parser for a Welkin variant.

## Source code

- **[setup.tex](setup.tex)** includes all the package imports and custom macros needed.
- **[welkin-book.tex](welkin-book.tex)** stores the main place where the chapters are collected for the Welkin Book the chapters are collected for the Welkin Book.
- **[welkin-standard.tex](welkin-standard.tex)** modifies the format of [chapters/3-spec.tex.](chapters/3-spec.tex) 
as an article, but leaves the contents the same.
- **[build.sh](build.sh)** generates both welkin-book.pdf and welkin-standard.pdf.
- **[.auctex-auto](.auctex-auto)** is tied to the [the AUCTeX mode for emacs](https://www.gnu.org/software/auctex/).


# Generating a PDF

You can manually compile your own PDF, but you will need several components:

-   pdflatex
-   bibtex
-   makeindex
-   Optional: latexmk (see the (installation guide)[https://mg.readthedocs.io/latexmk.html])
-   Specific packages: TBD

Guide across different systems: TBD. All of these are provided by a full installation of TexLive any time after **November 29, 2023.** This is because [simplebnf][https://github.com/Zeta611/simplebnf] is now version 1.0.0, and works well with Welkin grammars. (Special thanks to [Zeta611][https://github.com/Zeta611] and [wilbowma][https://github.com/wilbowma] for this amazing package!)

To generate a pdf, follow either of these terminal commmands in the the root directory of this project (welkin-book).
# The Welkin Book
``` shell
pdflatex welkin-standard.book
```

# The Welkin Standard
``` shell
pdflatex welkin-standard.book
```







# Copyright and License

## Source Files

setup.tex, welkin-book.tex, welkin-standard.tex, chapters/{1-intro.tex, 2-background.tex, 3-spec.tex, 4-conclusion.tex}
(c) 2023 Oscar Bender-Stone.

*Update on December 3, 2023: I am realized that it is better to cite LaTeX files themselves under a programming minded license, instead of a Creative Commons License. This is also a recommendation by the Creative Commons organization (see [this link][https://pitt.libguides.com/openlicensing/creativecommons#:~:text=Although%20one%20can%20use%20a,license%20specifically%20designed%20for%20software.]). Please use the updated version with the MIT license.*

The LaTeX source files are licensed under the MIT license, located in the directory LICENSES.

# The Welkin Book

*Welkin: An Information Language* (c) 2023 by Oscar Bender-Stone.

*Welkin: An Information Language* is licensed under the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

[![img](http://i.creativecommons.org/l/by/3.0/80x15.png)](http://creativecommons.org/licenses/by/3.0/deed)

You should have received a copy of the license along with this
work. If not, see <http://creativecommons.org/licenses/by-sa/4.0/>.

# The Welkin Standard

*The Welkin Standard* (c) 2023 by Oscar Bender-Stone.

*The Welkin Standard* is licensed under the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

[![img](http://i.creativecommons.org/l/by/3.0/80x15.png)](http://creativecommons.org/licenses/by/3.0/deed)

You should have received a copy of the license along with this
work. If not, see <http://creativecommons.org/licenses/by-sa/4.0/>.

# Citation
Please note that this book is still a work in progress! No official versioning scheme has been used because this project is vastly in development. (There will be a transition to sTeX soon).
Most importantly, this means that there may be more authors; this will **not** be the finalized citation.

(If you see that these citations refer to the Metamath book, please ignore it! I was using it as a guide for creating the Bibtex entries. I will mention Metamath in a separate update in some form, mostly likely on my blog).

## Welkin Book
``` bibtex
@Book{
author = {Oscar E. Bender-Stone},
title = {Welkin: An Information Language},
year = {2023},
url = {https://github.com/AstralBearStudios/welkin-book/main/tree/welkin-book.pdf},
}
```

## Welkin Standard

``` bibtex
@Article{
author = {Oscar E. Bender-Stone},
title = {Metamath: A Computer Language for Pure Mathematics},
year = {2023},
url = {https://github.com/AstralBearStudios/welkin-book/main/tree/welkin-book.pdf},
}
```





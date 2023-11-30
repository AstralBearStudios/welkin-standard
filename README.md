⚠ **Warning: This repository is a WIP. This book is in its early stages and does not have substantial text. Please wait to submit any issues, and stay tuned for updates.**

This repository stores *Welkin: An Information Language*, also known as the Welkin Book. It provides a philosophical basis for the language, as well as a formal specification for several key components.

*Update on November 15, 2023: I have decided not to include CFLT into this book. I will explain more details on [my blog.](https://logsofhumanisticlogic.wordpress.com) For the time being, it is possible to express any concept from First Order Logic. In time, I will prove that you can do more, and I will use Welkin files to do so!*

Welkin is a customizable language to store information from any subject matter. 

It is possible to manually parse and evaluate the resulting .welkin files, but for ease, long-term use, and large scale projects, there is a program can manage them. The current implementation of this program is [PyWelkin (WIP)](https://github/astral-bear/pywelkin).


# Contents 

## Documents

- **[welkin-book.pdf](welkin-book.pdf)** contains the complete guide on Welkin, including some major results. It is the best place to start to get an overall understanding of Welkin and different ways to use it. Note, however, that this is not a complete characterization of Welkin's capabilities.
- **[welkin-standard.pdf](welkin-standard.pdf)** contains Chapter 3 on the Welkin Standard. This is a must-have for official implementations.

## Source code

- **[setup](setup.tex)** includes all the package imports and custom macros needed.
- **[welkin-book.tex](welkin-book.tex)** stores the main place where the chapters are collected for the Welkin Book the chapters are collected for the Welkin Book.
- 
- **[welkin-standard.tex](welkin-standard.tex)** modifies the format of [chapters/3-spec.tex.](chapters/3-spec.tex) 
as an article, but leaves the contents the same.
- **[grammars](grammars)** contains text based versions of Welkin grammars. While these are listed out in the standard, [grammars](grammars) is the definitive source for writing an official parser for a Welkin variant.
- **[.auctex-auto](.auctex-auto)** is tied to the [the AUCTeX mode for emacs](https://www.gnu.org/software/auctex/).


# Generating a PDF

You can manually compile your own PDF, but you will need several components:

-   pdflatex
-   bibtex
-   makeindex
-   Specific packages: TBD

Guide across different systems: TBD. All of these are provided by a full installation of TexLive any time after **November 29, 2023.** This is because (simplebnf)[https://github.com/Zeta611/simplebnf] is now version 1.0.0, and works well with Welkin grammars. (Special thanks to (Zeta611)[https://github.com/Zeta611] and (wilbowma)[https://github.com/wilbowma] for this amazing package!)


# Copyright and License

*Welkin: An Information Language* (c) 2023 by Oscar Bender-Stone

*Welkin: An Information Language* is licensed under the [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

[![img](http://i.creativecommons.org/l/by/3.0/80x15.png)](http://creativecommons.org/licenses/by/3.0/deed)

You should have received a copy of the license along with this
work. If not, see <http://creativecommons.org/licenses/by-sa/4.0/>.


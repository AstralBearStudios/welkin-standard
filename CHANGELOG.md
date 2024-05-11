# Change Log (Temporary)

**Status: In use**

All changes and updates for Welkin will be stored here.
This document will eventually be superseded by a new file,
which will compile into Welkin. 


## 2024-5-10
- Recently, some concerns have been raised about Typst's complexity, particularly because
it has no documented grammar. It is unclear whether Typst is unambiguous, which could
affect the reading of the Standard. Additionally, while Typst provides multiple elements, 
this project only needs two of them: headers and lists.

As a simpler alternative, the new typsetting format will be [Wiki Creole 1.0](https://en.wikipedia.org/wiki/Creole_(markup)).
This language was chosen for several reasons.

- Creole is well-specified. The most recent version has a grammar,
  a parser, and a comprehensive test suite. 
  (See [https://dirkriehle.com/wp-content/uploads/2008/07/ws2008-wiki-creole-grammar-final-for-web.pdf]).
  Note that they do *not* prove the grammar is unambiguous. To avoid ambiguity,
  an update to this project will include a small, unambiguous subset of Creole. 
  This will also limit the complexity in writing the Standard.
- Several Wiki Engines render Creole into HTML. In particular, 
  MoinMoin is a promising open source tool that is in active development. 
  See [their page here](https://moin-20.readthedocs.io/en/latest/user/creolewiki.html). 
  Note that all of Creole's syntax is functional, except 
  syntax highlighting for code blocks (which is not needed for the Standard).
- Creole is stable and has not changed since 2008.


A Wiki Engine for Creole will be chosen soon, and the Typst source files will be moved to Creole. These will be licensed under CC-By-4.0 and will **not** include a SPDX comment at the top.

For the time being, Markdown will stil be used in the README, CHANGELOG, and CONTRIBUTING.
However, this may change in future updates.
 
## 2024-3-22

### Added

- Updates will be put into a changelog for easier access. Please see CHANGELOG.md for future reference. Dates will be written in ISO notation yyyy-mm-dd to minimize confusion. If a new format is chosen in the future, it will be put into this document first.

### Changes

- The repository will now be `welkin-standard` instead of `welkin-book`. It will only store the official Welkin Standard, as well as source files.
Development on the Welkin Book will be postponed indefinitely.
- Official documents will be written in two formats: Plain Text and [Typst](https://github.com/typst/typst). This was carefully decided for one major reason: the standard needs to have small source files to be self-contained. Every word needs to be tracked and be easily inspected. To satisfy this goal, formats are divided into two groups. 
    - `welkin-bootstrap` (Text): this will be a self-contained file that contains the entire specification with only US-ASCII. Artifacts will be available in separate files as a reference. The majority of this file will be Welkin (WIP).
    - Typeset Standard (PDF, HTML): Typst will generate these formats. The standard will create a carefully chosen subset for Typst and maximize backwards compatiblity. Any artifacts will be copied identically. For now, HTML documents will be produced using pandoc, but typst will be used alone once [HTML exports](https://github.com/typst/typst/issues/721) are supported.

## 2023-12-15

### Changes

- I am realized that it is better to cite LaTeX files themselves under a programming minded license, instead of a Creative Commons License. This is also a recommendation by the Creative Commons organization (see [this link][https://pitt.libguides.com/openlicensing/creativecommons#:~:text=Although%20one%20can%20use%20a,license%20specifically%20designed%20for%20software.]). Please use the updated version with the MIT license.

## 2023-9-15

Narrowing down content scope.

### Removed

- I have decided not to include CFLT into this book. I will explain more details on [my blog.](https://logsofhumanisticlogic.wordpress.com) For the time being, it is possible to express any concept from First Order Logic. In time, I will prove that you can do more, and I will use Welkin to do so!*


# Change Log (Temporary)

**Status: In use**

All changes and updates for Welkin will be stored here.
This document will eventually be superseded by a new file, which will compile into Welkin. 

## 2024-22-3

### Added

- Updates will be put into a changelog for easier access. Please see CHANGELOG.md for future reference. Dates will be written in ISO notation yyyy-mm-dd to minimize confusion. If a new format is chosen in the future, it will be put into this document first.

### Changes

- The repository will now be `welkin-standard` instead of `welkin-book`. It will only store the official Welkin Standard, as well as source files.
Development on the Welkin Book will be postponed indefinitely.
- Official documents will be written in two formats: Plain Text and [Typst](https://github.com/typst/typst). This was carefully decided for one major reason: the standard needs to have small source files to be self-contained. Every word needs to be tracked and be easily inspected. To satisfy this goal, formats are divided into two groups. 
    - `welkin-bootstrap` (Text): this will be a self-contained file that contains the entire specification with only US-ASCII. Artifacts will be available in separate files as a reference. The majority of this file will be Welkin (WIP).
    - Typeset Standard (PDF, HTML): Typst will generate these formats. The standard will create a carefully chosen subset for Typst and maximize backwards compatiblity. Any artifacts will be copied identically. For now, HTML documents will be produced using pandoc, but typst will be used alone once [HTML exports](https://github.com/typst/typst/issues/721) are supported.

## 2023-15-12

### Changes

- I am realized that it is better to cite LaTeX files themselves under a programming minded license, instead of a Creative Commons License. This is also a recommendation by the Creative Commons organization (see [this link][https://pitt.libguides.com/openlicensing/creativecommons#:~:text=Although%20one%20can%20use%20a,license%20specifically%20designed%20for%20software.]). Please use the updated version with the MIT license.

## 2023-15-9

Narrowing down content scope.

### Removed

- I have decided not to include CFLT into this book. I will explain more details on [my blog.](https://logsofhumanisticlogic.wordpress.com) For the time being, it is possible to express any concept from First Order Logic. In time, I will prove that you can do more, and I will use Welkin to do so!*


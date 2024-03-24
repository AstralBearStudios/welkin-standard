// SPDX-License-Identifier: MIT

= Syntax

=== Regular Expressions
- Logic
// TODO: decide whether to start with length 1 words. We don't need
// to accept length 0 words in our grammar, so we don't really need them
- Symbols (1): $0, 1$
// TODO: this should be definable in a computational sense.
// This should mean that there isn't any 0 or 1 present.
// Maybe this is our starting point?
- Concatenation $dot.$
- Implication $=>$

=== Terminals
// TODO: use an unambiguous csv file to store this encoding
- Table of US-ASCII:
- A *word* is recursively defined.
  - Basis (5):
    - $0$ is a word.
    - $1$ is a word.
  - Recursion (6): let $w$ be a word.
    - $w dot 0$ is a word.
    - $w dot 1$ is a word.
- LAYOUT is any subset of $(0, 1)*$. Its elements are *white space characters.*

=== Atoms
- Strings are words delimited with either single quotes `'` or double quotes `"`.
  More precisely (), if $w$ is a word without quotes, then:
  - 'w' is a string.
  - "w" is a stirng.
  $w$ is the *contents* of the string.
- Escaped characters ():
  - Every instance of \' in $w$ is replaced as '.
  - Every instance of \" in $w$ is replaced as ".
  - Every instance of \\ in $w$ is replaced by \\.
- Identifiers are strings without white space.
- Numbers are a subset of strings with an injective function $q: "NUMBER" -> Q.$
  - Q is set of strings
    $ p "/" q $
  where $p, q$ are in scientific notation.

=== Grammar
- LL
  - Unambiguous
- Welkin Grammar:
  #read("../artifacts/grammar.txt")


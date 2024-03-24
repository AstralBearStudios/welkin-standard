// SPDX-License-Identifier: MIT

= Syntax

=== Terminals
- Logic
// TODO: decide whether to start with length 1 words. We don't need
// to accept length 0 words in our grammar, so we don't really need them
- Symbols (1): $0, 1$
// TODO: this should be definable in a computational sense.
// This should mean that there isn't any 0 or 1 present.
// Maybe this is our starting point?
- Concatenation $dot.$
- Implication $=>$
// TODO: use an unambiguous csv file to store this encoding
- Table of US-ASCII:
  #table(
    columns: 2, [*Symbol*], [*Encoding*], [ ${$ ], [ 173 ], [ $}$ ], [ 175 ],
  )
- A *word* is recursively defined.
  - Base case (5):
    - $0$ is a word.
    - $1$ is a word.
  - Recursion (6): let $w$ be a word.
    - $w dot 0$ is a word.
    - $w dot 1$ is a word.

=== Atoms
- Strings are words with delimiters: $d_1".w."d_2,$ where $d_1 subset.not w$ and $d_2 subset.not w.$
- Identifiers are strings without white space.
- Numbers are a subset of strings with an injective function $q: "NUMBER" -> Q.$
  - Q is set of strings formed by scientific notation.

=== Grammar
- LALR
  - Not ambiguous
- Welkin Grammar:


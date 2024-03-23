// SPDX-License-Identifier: MIT
// TODO: design official template
#set text(font: "Stix Two", size: 12pt)

#align(center, text(17pt)[*The Welkin Standard*])
#align(center, text(15pt)[Oscar Bender-Stone])

== Conventions
- Each topic uses content from `bootstrap.welkin`. We write $(n)$ for the $n$-th
  line in the bootstrap file.

== Syntax

=== Terminals
- Logic
// TODO: decide whether to start with length 1 words. We don't need
// to accept length 0 words in our grammar, so we don't really need them
- Symbols (1): $0, 1$
// TODO: this should be definable in a computational sense.
// This should mean that there isn't any 0 or 1 present.
// Maybe this is our starting point?
- Successor $S$
- Implication $=>$
// TODO: use an unambiguous csv file to store this encoding
- Table of US-ASCII:
  #table(
    columns: 2, [*Symbol*], [*Encoding*], [ ${$ ], [ 173 ], [ $}$ ], [ 175 ],
  )
- A *word* is recursively defined (1).
  - Base case:
    - $0$ is a word.
    - $1$ is a word.
  - Recursion: let $w$ be a word.
    - $w.0$ is a word.
    - $w.1$ is a word.
- Concatenation
  - Base case: $w.epsilon = w.$
  - Recursion:
    - $w.(u.0) = (w.u).0$
    - $w.(u.1) = (w.u).1$

=== Atoms
- Strings are words with delimiters: $d_1".w."d_2,$ where $d_1 subset.not w$ and $d_2 subset.not w.$
- Identifiers are strings without white space.
- Numbers are a subset of strings with an injective function $q: "NUMBER" -> Q.$
  - Q is set of strings formed by scientific notation.

=== Grammar
- LALR
  - Not ambiguous
- Welkin Grammar:

== Semantics
=== Equality on Terms
- Two strings are equal if they contain the same strings, in order.
- Two numbers are equal if $q(a) = q(b).$

=== Valid Strings
- No relative members at toplevel (with length 2).
- No duplicate members, graphs, or connections.

=== Welkin Information Graphs
A *Welkin Information Graph (WIG)* is a structure $G = (T, H, L)$ with:
- A tree $T,$
- A hypergraph $H,$
- A tree $L$ isomorphic to $T.$

=== AST (Recursive)
- Units:
- Members are words of units
- Connections are WIGs with
- Graphs are WIGs with
  - Derived terms as children
  - Ordered triples are arcs.

=== Encoding
The *encoding* $E(G)$ of the WIG $G$ is the unique string where
- All nodes are listed in breadth-first order
- Leaves are terms ending with "\#"
- Edges are enumerated, starting from 0. They are included in nodes:
  - $s$ means source,
  - $c$ means connector,
  - $t$ means target.

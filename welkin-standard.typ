// SPDX-License-Identifier: MIT
#set text(font: "Stix Two")

= The Welkin Standard

== Syntax

*Terminals*
- Undefined notions:
  - Successor $S$
  - Symbols: $0, 1$
  - Implication $=>$
// TODO: use an unambiguous csv file to store this encoding
- Table of US-ASCII:
  #table(columns: 2, [*Symbol*], [*Encoding*], [ ${$ ], [ 173 ], [$}$], [175])
- A *word* is recursively defined.
  - Base case: the empty set is a word.
  - Recursion: if $w$ is a word, $w.1$ is a word.

*Atoms*
- Strings are words with delimiters.
- Identifiers are strings without white space.
- Numbers are a subset of strings with an injective function $q: "NUMBER" -> QQ.$

== Semantics
*Equality on Terms*
- Two strings are equal if they contain the same strings, in order.
- Two numbers are equal if $q(a) = q(b).$

A *Welkin Information Graph (WIG)* is a structure $G = (T, H, L)$ with:
- A tree $T,$
- A hypergraph $H,$
- A tree $L$ isomorphic to $T.$

The *encoding* $E(G)$ of the WIG $G$ is the unique string where
- All nodes are listed in breadth-first order
- Leaves are terms ending with "\#"
- Edges are enumerated, starting from 0. They are included in nodes:
  - $s$ means source,
  - $c$ means connector,
  - $t$ means target.

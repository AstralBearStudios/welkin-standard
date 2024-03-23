// SPDX-License-Identifier: MIT
#set text(font: "Stix Two")

= The Welkin Standard

== Syntax

=== Terminals
- Logic
- Undefined notions:
  - Symbols: $0, 1$
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
- Empty set: $epsilon$ satisfies $not S(epsilon)$
- A *word* is recursively defined.
  - Base case: the empty set $epsilon$ is a word.
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
- Numbers are a subset of strings with an injective function $q: "NUMBER" -> QQ.$

=== Grammar
- LALR
- Welkin Grammar:

== Semantics
=== Equality on Terms
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

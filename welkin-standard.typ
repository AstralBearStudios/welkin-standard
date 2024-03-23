// SPDX-License-Identifier: MIT

= The Welkin Standard

== Syntax

*Atoms*
- Strings are sequences of characters.
- Identifiers are strings without white space.
- Numbers are a subset of strings with an injective function $q: "NUMBER" -> QQ.$

== Semantics
*Equality on Terms*
- Two strings are equal if they contain the same strings, in order.
- Two numbers are equal if $q(a) = q(b).$

A *Welkin Information Graph (WIG)* is a structure $G = (T, H)$ with two
components:
- A tree $T,$
- A hypergraph $H.$

The *encoding* $E_G$ of the WIG $G$ is the unique string where
- All nodes are listed in breadth-first order
- Leaves are terms ending with \#
- Edges are enumerated, starting from 0. They are included in nodes:
  - $s$ means source,
  - $c$ means connector,
  - $t$ means target.

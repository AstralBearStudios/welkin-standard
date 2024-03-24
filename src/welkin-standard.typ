// SPDX-License-Identifier: MIT

#import "abstract.typ": abstract

#set text(font: "Stix Two", size: 12pt)

#set align(center)
#text(22pt, "The Welkin Standard")

#set align(center)
#text(17pt, [Oscar Bender-Stone])

#set align(center)
#text(17pt, "Abstract")

#set align(center)
#text(15pt, abstract)

pagebreak()

#include "introduction.typ"
#include "syntax.typ"

== Semantics
=== Equality on Terms
- Two strings are equal if they contain the same strings, in order.
- Two numbers are equal if $q(a) = q(b).$

=== Valid Strings
- No relative members at toplevel (with length 2).
- No duplicate members, graphs, or connections.

=== Welkin Information Graphs
// TODO: to be self contained, define trees, hypergraphs, and the label tree as strings accepted by certain grammars
A *Welkin Information Graph (WIG)* is a structure $G = (T, H, L)$ with:
- A tree $T,$
- A hypergraph $H,$
- A tree $L$ isomorphic to $T$ called the *label tree.*

=== AST ()
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

== Bootstrap

*Theorem.* The Bootstrap File (Appendix A) has the encoding

$ .$

We prove this in the following calculations:
// TODO: import this from a text file.

$ (1) 0, 1 => {0, 1} $
$ (3) "start" - { 0, 1} -> "word" => ("start", {0, 1}, "word") $

== Appendix A: Boostrap File


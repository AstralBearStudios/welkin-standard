// SPDX-License-Identifier: MIT

#import "abstract.typ": abstract
#import "template.typ": format
#show: doc => format(title: [ The Welkin Standard ], abstract: abstract, doc)

#include "introduction.typ"

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


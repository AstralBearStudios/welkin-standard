#let format(title: none, authors: (), abstract: [], doc) = {
  set text(font: "Stix Two", size: 12pt)

  set align(center)
  text(17pt, title)

  set align(center)
  text(15pt, [Oscar Bender-Stone])

  set align(left)
  columns(1, doc)
}

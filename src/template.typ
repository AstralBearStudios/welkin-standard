#let format(title: none, authors: (), abstract: [], doc) = {
  set text(font: "Stix Two", size: 12pt)

  set align(center)
  text(22pt, title)

  set align(center)
  text(17pt, [Oscar Bender-Stone])

  set align(center)
  text(17pt, "Abstract")

  set align(center)
  text(15pt, abstract)

  // pagebreak()

  set align(left)
  text(doc)
}

#let header = []

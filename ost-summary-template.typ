#let conf(lecture: "", authors: "", doc) = {
  let line_skip = 0.4em
  let font_size = 8pt
  let level1_color = "#012a4a"
  let level2_color = "#013a63"
  let level3_color = "#01497c"
  let level4_color = "#014f86"
  let level5_color = "#2a6f97"

  show: set block(below: line_skip)
  show: set par(leading: line_skip, justify: true)

  set page(
    paper: "a4",
    flipped: true,
    margin: ("top": 8mm, "rest": 5mm),
    header-ascent: 1.5mm,
    header: align(center, text(
      1.1em,
      weight: "bold",
      [#lecture / #authors / #counter(page).display()],
    )),
  )
  set text(size: font_size, font: "Noto Sans")

  set terms(hanging-indent: 0mm)

  show outline.entry.where(level: 1): set text(weight: "bold")

  show heading: set text(white, size: font_size)
  show heading: set block(
    radius: 0.65mm,
    inset: 0.65mm,
    width: 100%,
    above: line_skip,
    below: line_skip,
  )
  show heading.where(level: 1): set block(fill: rgb(level1_color))
  show heading.where(level: 2): set block(fill: rgb(level2_color))
  show heading.where(level: 3): set block(fill: rgb(level3_color))
  show heading.where(level: 4): set block(fill: rgb(level4_color))
  show heading.where(level: 5): set block(fill: rgb(level5_color))
  set heading(numbering: "1.1")

  columns(4, gutter: 2mm, doc)
}

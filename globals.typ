#let underline-color = rgb("#91cbfd")
#let icon-color = underline-color.darken(20%)
#let link-color = underline-color.mix(rgb("#4d8ecf"))

#let pipe-sep = [#h(4pt) | #h(4pt)]

#let loc(it) = text(weight: "regular", size: 0.9em, fill: rgb("#7c7c7c"), it)

#let LaTeX = {
  set text(font: "New Computer Modern", weight: "bold")
  let a = text(baseline: -0.35em, size: 0.66em, "A")
  let e = text(baseline: 0.22em, "E")
  box(
    "L" + h(-0.32em) + a + h(-0.13em) + "T" + h(-0.14em) + e + h(-0.14em) + "X",
  )
}

#import "../globals.typ": *

#let link-color = rgb("#0645AD")
#let fa-icon = fa-icon.with(fill: link-color.lighten(40%))

#let timeline-entry(
    title: none,
    subtitle: none,
    date: none,
    location: none,
    it,
) = block(
    breakable: false,
    below: 1.5em,
    {
        grid(
            columns: (1fr, auto),
            row-gutter: 0.5em,
            align: (left, right),
            text(size: 12pt, weight: "bold", title), date,
            emph(subtitle), emph(location),
        )

        v(-0.3em)

        it
    },
)

#let named-entry(
    name: none,
    it,
) = block(
    breakable: false,
    // [#text(size: 12pt, weight: "bold", [#name:]) #it]
    grid(
        columns: (auto, auto, 1fr),
        column-gutter: 0.5em,
        text(weight: "semibold", smallcaps(name)), [#sym.dash.en], it,
    ),
)

#let cv(
    name: none,
    subtitle: none,
    socials: (),
    doc,
) = {
    set document(author: name, title: name)
    set page(
        paper: "a4",
        margin: (x: 1.5cm, y: 1.5cm),
        number-align: center,
    )

    set text(font: "Libertinus Serif", size: 11pt)
    set par(leading: 6pt)
    // show link: it => {
    //     set text(fill: black)
    //     underline(stroke: 1.5pt + underline-color, offset: 3pt, it)
    // }
    show link: set text(fill: link-color)
    show raw: set text(font: "Maple Mono")

    set heading(bookmarked: false, outlined: false)
    show heading.where(level: 1): set text(size: 22pt)
    show heading.where(level: 1): set block(below: 10pt)

    show heading.where(level: 2): set text(size: 14pt, fill: rgb("#26428b"))
    show heading.where(level: 2): smallcaps
    show heading.where(level: 2): set block(
        above: 22pt,
        // below: 15pt,
        width: 100%,
        stroke: (bottom: 0.5pt),
        inset: (bottom: 5pt),
    )

    {
        set align(center)

        heading(level: 1, name)

        if subtitle != none {
            block(
                below: 13pt,
                text(size: 1.2em, weight: "semibold", subtitle),
            )
        }

        {
            // set text(weight: "semibold")

            socials.join(pipe-sep)
        }
    }

    doc
}

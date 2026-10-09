#import "../globals.typ": *

#let underline-color = rgb("#91cbfd")
#let fa-icon = fa-icon.with(fill: underline-color.darken(20%))
#let loc(it) = text(weight: "regular", size: 0.9em, fill: rgb("#7c7c7c"), it)

#let entry-grid-style = body => {
    set grid(
        columns: (15%, 1fr),
        stroke: (x, y) => if x == 0 { (right: 0.5pt + black) },
    )

    body
}

#let timeline-entry(
    title: none,
    subtitle: none,
    date: none,
    location: none,
    it,
) = block(
    breakable: false,
    {
        show: entry-grid-style

        grid(
            align: (right, left + horizon),
            grid.cell(
                inset: (right: 1em, bottom: 1em),
                text(size: 1.1em, date),
            ),
            grid.cell(
                inset: (left: 1em, bottom: 1em),
                {
                    set list(marker: [‣], spacing: 9pt)

                    text(
                        size: 1.1em,
                        weight: "bold",
                        title,
                    )

                    if location != none [, #loc(location)]

                    block(
                        above: 0.4em,
                        smallcaps(subtitle),
                    )

                    v(-0.2em)

                    it
                },
            ),
        )
    },
)

#let named-entry(
    name: none,
    it,
) = block(
    breakable: false,
    below: 0.6em,
    {
        show: entry-grid-style

        grid(
            align: (right + horizon, left + horizon),
            grid.cell(
                inset: (right: 1em, y: 0.3em),
                {
                    set par(leading: 0.4em)
                    text(weight: "bold", name)
                },
            ),
            grid.cell(
                inset: (left: 1em, y: 0.3em),
                it,
            ),
        )
    },
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
    show link: it => {
        set text(fill: black)
        underline(stroke: 1.5pt + underline-color, offset: 3pt, it)
    }

    set heading(bookmarked: false, outlined: false)
    show heading.where(level: 1): set text(size: 22pt)
    show heading.where(level: 1): set block(below: 10pt)

    show heading.where(level: 2): set text(size: 14pt)
    show heading.where(level: 2): set block(
        above: 22pt,
        below: 15pt,
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
            set text(weight: "semibold")

            socials.join(pipe-sep)
        }
    }

    doc
}

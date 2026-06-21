#import "@preview/scienceicons:0.1.0": *

#let underline-color = rgb("#91cbfd")
#let pipe-sep = [#h(4pt) | #h(4pt)]

#let loc(it) = text(weight: "regular", size: 0.9em, fill: rgb("#7c7c7c"), it)
#let contact(icon, content) = [
    #icon(color: underline-color.darken(20%))
    #content
]

#let header(name: "", title: "", address: "", profiles: ()) = {
    set align(center)

    block(
        below: 10pt,
        text(size: 2em, weight: "bold", name),
    )

    block(
        below: 13pt,
        text(size: 1.2em, weight: "semibold", title),
    )

    {
        set text(weight: "semibold")
        profiles.join([#h(5pt) | #h(5pt)])
    }
}

#let create-description(description) = {
    if type(description) == content {
        description
    } else if type(description) == array {
        let elements = ()
        for item in description {
            if type(item) == dictionary {
                let key = item.at("key", default: "")
                let val = item.at("value", default: "")
                let sep = item.at("separator", default: "\n")

                let formatted_val = if type(val) == array {
                    if sep == "\n" {
                        list(marker: [‣], spacing: 9pt, ..val)
                    } else {
                        val.join(sep)
                    }
                } else {
                    val
                }

                if key == "" {
                    elements.push(formatted_val)
                } else {
                    elements.push([*#key:* #formatted_val])
                }
            } else {
                elements.push(item)
            }
        }
        elements.join(linebreak())
    }
}

#let timeline-entry(
    meta: none,
    title: none,
    subtitle: none,
    date: none,
    description: none,
) = block(
    breakable: false,
    {
        show link: it => {
            set text(fill: black)
            underline(stroke: 1.5pt + underline-color, offset: 3pt, it)
        }
        grid(
            columns: (15%, 1fr),
            align: (right, left),
            stroke: (x, y) => if x == 0 { (right: 0.5pt + black) } else {
                none
            },
            {
                set text(size: 1.1em)
                pad(right: 1em, bottom: 1em, date)
            },
            pad(left: 1em, bottom: 1em)[
                #set align(horizon)
                #if title != none {
                    text(size: 1.1em, weight: "bold", title)
                }
                #if subtitle != none {
                    block(
                        above: 0.4em,
                        smallcaps(subtitle),
                    )
                }

                #v(-0.2em)

                #if description != none {
                    create-description(description)
                }
            ],
        )
    },
)

#let named-entry(name: none, value: (), separator: " | ") = block(
    breakable: false,
    below: 0.6em,
    {
        show link: it => {
            set text(fill: black)
            underline(stroke: 1.5pt + underline-color, offset: 3pt, it)
        }

        grid(
            columns: (15%, 1fr),
            stroke: (x, y) => if x == 0 { (right: 0.5pt + black) } else {
                none
            },
            align: (right + horizon, left + horizon),
            pad(right: 1em, y: 0.3em)[
                #set par(leading: 0.4em)
                #text(weight: "bold", name)
            ],
            pad(left: 1em, y: 0.3em)[
                #if type(value) == str or type(value) == content {
                    value
                } else if type(value) == array {
                    value.join(separator)
                }
            ],
        )
    },
)

#let cv(
    name: none,
    subtitle: none,
    socials: (),
    sections: (:),
) = {
    set page(
        paper: "a4",
        margin: (x: 1.5cm, y: 1.5cm),
        number-align: center,
    )
    set text(font: "Libertinus Serif", size: 11pt)
    set par(leading: 6pt)

    show link: set text(fill: underline-color.mix(rgb("#4d8ecf")))

    show heading.where(level: 1): it => {
        set block(below: 10pt)
        set text(size: 22pt)
        it
    }

    show heading.where(level: 2): it => {
        set text(size: 14.3pt)
        block(
            above: 22pt,
            below: 5pt,
            sticky: true,
            it,
        )

        block(
            above: 0pt,
            below: 15pt,
            sticky: true,
            line(length: 100%, stroke: 0.5pt),
        )
    }

    {
        set align(center)
        heading(level: 1, name)
        block(
            below: 13pt,
            text(size: 1.2em, weight: "semibold", subtitle),
        )
        {
            set text(weight: "semibold")
            socials.join([#h(5pt) | #h(5pt)])
        }
    }

    for section in sections {
        heading(level: 2, section.title)

        if type(section.content) == array {
            section.content.join()
        } else {
            section.content
        }
    }
}

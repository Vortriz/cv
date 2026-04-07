#import "globals.typ": *

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

#let section(title) = {
  block(
    above: 22pt,
    below: 5pt,
    text(size: 1.3em, weight: "bold", title),
  )

  block(
    below: 15pt,
    line(length: 100%, stroke: 0.5pt),
  )
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
      columns: (16%, 1fr),
      align: (right, left),
      stroke: (x, y) => if x == 1 { (left: 0.5pt + black) } else { none },
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
          if type(description) == str or type(description) == content {
            description
          } else if type(description) == array {
            let elements = ()
            for item in description {
              if type(item) == dictionary {
                let key = item.at("key", default: "")
                let val = item.at("value", default: "")
                let sep = item.at("separator", default: ", ")

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
      ],
    )
  },
)

#let skill-entry(name: none, value: (), separator: " | ") = block(
  breakable: false,
  below: 0.6em,
  {
    show link: it => {
      set text(fill: black)
      underline(stroke: 1.5pt + underline-color, offset: 3pt, it)
    }
    grid(
      columns: (16%, 1fr),
      stroke: (x, y) => if x == 1 { (left: 0.5pt + black) } else { none },
      align: (right, left + horizon),
      pad(right: 1em, y: 0.3em)[
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

#import "/src/aesthetic/lib.typ" as aesthetic
#import "/src/ats/lib.typ" as ats
#import "/src/globals.typ": *
#import "/data/base.typ": *
#import "extended/referees.typ": referees
#import "extended/statement.typ": statement

#let name = "Rishi Vora"
#let subtitle = [BS-MS in Physics from IISER Mohali]
#let socials(template) = (
    [
        #template.fa-icon("envelope", solid: true)
        #link("mailto:vorarishi22@gmail.com")
    ],
    [
        #template.fa-icon("circle-user", solid: true)
        #link("https://vortriz.github.io")[Portfolio]
    ],
    [
        #template.fa-icon("github")
        #link("https://github.com/Vortriz")[GitHub]
    ],
    [
        #template.fa-icon("linkedin")
        #link("https://linkedin.com/in/rishi-vora-537b09256")[LinkedIn]
    ],
)


#let create-cv(type, template, exts: ()) = {
    let sections = (
        education(template),
        research(template),
        skills(template),
        scholarships(template),
        extracurriculars(template),
    )

    document(
        "/out/" + type + "/cv.pdf",
        template.cv(
            name: name,
            subtitle: subtitle,
            socials: socials(template),
            sections.join(),
        ),
    )

    if exts.len() > 0 {
        if "referees" in exts {
            if template == aesthetic {
                sections.insert(2, referees)
            } else if template == ats {
                sections.push(referees)
            }
        }

        if "statement" in exts {
            sections.push(pagebreak())
            sections.push(statement)
        }

        document(
            "/out/" + type + "/extended/cv.pdf",
            template.cv(
                name: name,
                subtitle: subtitle,
                socials: socials(template),
                sections.join(),
            ),
        )
    }
}

#let exts = sys.inputs.at("ext", default: "").split(",").filter(x => x != "")
#create-cv("aesthetic", aesthetic, exts: exts)
#create-cv("ats", ats, exts: exts)



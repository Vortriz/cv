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
        #template.fa-icon("envelope", solid: true)
        #link("mailto:ms21113@iisermohali.ac.in")
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

#let template = ats

#let sections = (
    education(template),
    research(template),
    skills(template),
    scholarships(template),
    extracurriculars(template),
)

#template.cv(
    name: name,
    subtitle: subtitle,
    socials: socials(template),
    sections.join(),
)


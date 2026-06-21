#import "lib.typ": *
#import "base.typ": *
#import "extended/referees.typ": referees
#import "extended/statement.typ": statement

#let sections = (
    research,
    skills,
    scholarships,
    extracurriculars,
)

#let exts = sys.inputs.at("ext", default: ())
#if type(exts) == str {
    let exts = exts.split(",")
}

#if "cpi" in exts {
    sections.insert(0, education(show-cpi: true))
} else {
    sections.insert(0, education())
}

#if "referees" in exts {
    sections.push(referees)
}

#if "statement" in exts {
    sections.push(statement)
}

#let cv-full = cv(
    name: [Rishi Vora],
    subtitle: [Final Year BS-MS Student in Physics at IISER Mohali],
    socials: (
        contact(
            email-icon,
            link("mailto:vorarishi22@gmail.com"),
        ),
        contact(
            email-icon,
            link("mailto:ms21113@iisermohali.ac.in"),
        ),
        contact(
            website-icon,
            link("https://vortriz.github.io")[Portfolio],
        ),
        contact(
            github-icon,
            link("https://github.com/Vortriz")[GitHub],
        ),
        contact(
            linkedin-icon,
            link("https://linkedin.com/in/rishi-vora-537b09256")[LinkedIn],
        ),
    ),
    sections: sections,
)

#if exts.len() > 0 {
    document("src/extended/cv.pdf", cv-full)
} else {
    document("cv.pdf", cv-full)
}



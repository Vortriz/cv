#import "/src/globals.typ": *

#let education(template) = [
    == Education

    #template.timeline-entry(
        title: [Indian Institute of Science Education and Research (IISER)],
        subtitle: [Integrated Bachelors & Masters, with Major in Physics and Minor in Data Science],
        date: [2021 #sym.dash.em 2026],
        location: [Mohali],
    )[
        - *CPI:* 8.0 / 10
        - *Relevant Courses:* #template.inline-list(
                [Foundations of Quantum Mechanics and Quantum Information],
                [Advanced Quantum Mechanics],
                [Introduction to Data Science],
                [Machine Learning and Artificial Intelligence],
                [Computational Methods in Physics],
                [Algorithms and Complexity],
                [Nonlinear Dynamics and Chaos],
                [Modelling Complex Systems],
            )
    ]
]


#let research(template) = [
    == Research Experience

    #template.timeline-entry(
        title: [Quantum generative machine learning for state generation],
        subtitle: [Master's Thesis],
        date: [12/2025 #sym.dash.em 09/2026],
        location: [IISER Pune],
    )[
        - #inline-list(
                [*Guide:* #link("https://sites.iiserpune.ac.in/~santh/")[Prof. Santhanam]],
                [*Code:* #link("https://github.com/Vortriz/thesis")[github.com/Vortriz/thesis]],
            )
        - Created a new quantum state generation model that requires fewer resources and has significantly faster convergence compared to existing models, such as #link("https://link.aps.org/doi/10.1103/PhysRevLett.132.100602")[QuDDPM].
        - Applied it to various tasks, such as learning many-body phases, states distributed over nontrivial topology, localized states of Quantum Kicked Rotor etc.
        - Benchmarked gradient-free optimization strategies such as QNSPSA, SPSA, and Rotosolve against gradient-based approaches.
        - Created a Julia implementation using Yao.jl, with optional CUDA acceleration.
    ]

    #template.timeline-entry(
        title: [Reading project on QKD protocols],
        subtitle: [Summer reading project],
        date: [Summer 2024],
        location: [IISER Mohali],
    )[
        - *Guide:* #link("https://www.iisermohali.ac.in/faculty/dps/arvind")[Prof. Arvind]
        - Reviewed working of BB84, B92 and E91 QKD protocols.
        - Worked out Shor and Preskill's security proof of BB84 protocol.
    ]

    #template.timeline-entry(
        title: [Quantum algorithms and circuit decomposition],
        subtitle: [Summer internship],
        date: [Summer 2023],
        location: [IISER Mohali],
    )[
        - #inline-list(
                [*Guide:* #link("https://www.iisermohali.ac.in/faculty/dps/skgoyal")[Dr. Sandeep Goyal]],
                [*Code:* #link("https://github.com/Vortriz/Summer2023")[github.com/Vortriz/Summer2023]],
            )
        - Implemented Full Adder, Multiplier, Superposition Adder, and XOR adder circuits in Qiskit.
        - Attempted a circuit decomposition scheme using Solovay-Kitaev algorithm.
    ]
]

#let skills(template) = [
    == Skills & Certifications

    #template.timeline-entry(
        title: [Qiskit Global Summer School 2024],
        subtitle: [IBM],
        date: [2024],
    )[
        - #link(
                "https://www.credly.com/badges/e06613a7-854e-4449-9710-4b1b6ac5a68a/public_url",
            )[Certificate of Quantum Excellence]
        - Lectures, interactive sessions, and programming tasks on Circuit Transpilation, Modelling and Characterization of Hardware Noise, Execution on Noisy Quantum Hardware using Qiskit.
    ]

    #template.timeline-entry(
        title: [Qiskit Global Summer School 2023],
        subtitle: [IBM],
        date: [2023],
    )[
        - #link(
                "https://www.credly.com/badges/da9a447c-7ce6-4c8d-937d-284d4725ccea/public_url",
            )[Certificate of Quantum Excellence]
        - Lectures, interactive sessions, and programming tasks on Dynamic circuits, Phase estimation, Factoring, Error mitigation, VQE, and Iterative phase estimation.
    ]


    #template.named-entry(
        name: "Programming & Tools",
        template.inline-list(
            [*Python* (Qiskit, PyTorch, TensorCircuit)],
            [*Julia* (Yao.jl)],
            [*Linux* (NixOS)],
            [*Git*],
            [*Typst*],
            [Code written as a part of the coursework can be found on #link("https://vortriz.github.io/coursework/")[my website].],
        ),
    )

    #template.named-entry(
        name: "Spoken Languages",
        template.inline-list(
            [*English* (Fluent)],
            [*Hindi* (Native)],
            [*Gujarati* (Native)],
        ),
    )

    #template.named-entry(
        name: "Hobbies",
        [I actively develop and contribute to FOSS projects on #link("https://github.com/Vortriz")[GitHub], create websites once in a while, and spend my downtime listening to music and watching eclectic films.],
    )
]

#let scholarships(template) = [
    == Scholarships

    #template.timeline-entry(
        title: [IISER Mohali #text(weight: "regular")[— #smallcaps[Merit-Cum-Means Scholarship]]],
        date: [2022 #sym.dash.em 2026],
    )[#v(-0.5em) Bi-annual scholarship supporting Bachelor's and Master's studies.]
]

#let extracurriculars(template) = [
    == Extracurriculars

    #template.timeline-entry(
        title: [Won 2 bounties in unitaryHACK 2026],
        subtitle: [Unitary Foundation],
        date: [June 2026],
    )[
        - Annual virtual hackathon organized by #link("https://unitary.foundation/")[Unitary Foundation] for contributing to open-source quantum ecosystem.
        - #link("https://unitaryhack.dev/hackers/vortriz/")[Bounties]: #list(
            indent: 1em,
            [`quantumsavory.jl` #sym.dash.en `show` and visualization methods for multipartite Gaussian states from Gabs.],
            [`paulipropagation.jl` #sym.dash.en Embed example Jupyter notebooks into docs website.],
        )
    ]

    #template.timeline-entry(
        title: [Conducted Workshops on Python Tooling and Typst],
        subtitle: [IISER Pune],
        date: [March 2026],
    )[
        - *Link*: #link("https://github.com/Vortriz/workshops-and-presentations")[github.com/Vortriz/workshops-and-presentations]
        - Conducted interactive workshops focused on addressing problems with Python tooling ecosystem and showcasing Typst for high-quality document preparation.
    ]

    #template.timeline-entry(
        title: [Convenor of Turing Club (Computation Club)],
        subtitle: [IISER Mohali],
        date: [2023 #sym.dash.em 2024],
    )[
        - Organized Hackathons, Workshops, Talks etc.
        - Took programming help sessions.
    ]
]

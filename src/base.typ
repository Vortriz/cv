#import "lib.typ": *
#import "extended/cpi.typ": cpi

#let education(show-cpi: false) = (
    title: [Education],
    content: (
        timeline-entry(
            title: [Indian Institute of Science Education and Research (IISER), #loc[Mohali]],
            subtitle: [Integrated Bachelors & Masters in Physics, with Minor in Data Science],
            date: [2021 #sym.dash.em 2026],
            description: (
                (
                    key: "Relevant Courses",
                    value: (
                        [Foundations of Quantum Mechanics and Quantum Information],
                        [Advanced Quantum Mechanics],
                        [Machine Learning and Artificial Intelligence],
                        [Introduction to Data Science],
                        [Algorithms and Complexity],
                        [Computational Methods in Physics],
                        [Modelling Complex Systems],
                        [Nonlinear Dynamics, Chaos, and Complex Systems],
                        [Theory of Computation],
                    ),
                    separator: pipe-sep,
                ),
                if show-cpi {
                    cpi
                },
            ),
        ),
        timeline-entry(
            title: [eduNova Science Higher Secondary School, #loc[Ahmedabad]],
            subtitle: [12th #sym.dash.em Gujarat Secondary and Higher Secondary Education Board],
            date: [2021],
            description: (
                (key: "Grade", value: [A2]),
                (key: "Percentile", value: [92.25]),
            ),
        ),
    ),
)

#let research = (
    title: [Research Experience],
    content: (
        timeline-entry(
            title: [Generative quantum machine learning, #loc[IISER Pune]],
            subtitle: [Master Thesis],
            date: [12/2025 #sym.dash.em Present],
            description: (
                (
                    key: "Guide",
                    value: link(
                        "https://sites.iiserpune.ac.in/~santh/",
                    )[*Prof. Santhanam*],
                ),
                (
                    key: "Code",
                    value: [https://github.com/Vortriz/thesis],
                ),
                (
                    value: (
                        [Created a *new Generative QML model* that requires fewer resources and has significantly faster convergence compared to existing models, such as #link("https://link.aps.org/doi/10.1103/PhysRevLett.132.100602")[QuDDPM].],
                        [Applied it to various tasks, such as learning many-body phases, states distributed over nontrivial topology, localized states of Quantum Kicked Rotor etc.],
                        [Benchmarked gradient-free optimization strategies such as QNSPSA, SPSA, and Rotosolve against gradient-based approaches.],
                        [Created a Julia implementation using Yao.jl, with optional CUDA acceleration.],
                    ),
                ),
            ),
        ),
        timeline-entry(
            title: [Reading project on QKD protocols, #loc[IISER Mohali]],
            subtitle: [Summer reading project],
            date: [Summer 2024],
            description: (
                (
                    key: "Guide",
                    value: link(
                        "https://www.iisermohali.ac.in/faculty/dps/arvind",
                    )[*Prof. Arvind*],
                ),
                (
                    value: (
                        [Reviewed working of BB84, B92 and E91 QKD protocols.],
                        [Worked out Shor and Preskill's security proof of BB84 protocol.],
                    ),
                ),
            ),
        ),
        timeline-entry(
            title: [Quantum algorithms and circuit decomposition, #loc[IISER Mohali]],
            subtitle: [Summer internship],
            date: [Summer 2023],
            description: (
                (
                    key: "Guide",
                    value: link(
                        "https://www.iisermohali.ac.in/faculty/dps/skgoyal",
                    )[*Dr. Sandeep Goyal*],
                ),
                (
                    key: "Code",
                    value: [https://github.com/Vortriz/Summer2023],
                ),
                (
                    value: (
                        [Used Qiskit to implement basic circuits like Full Adder, Multiplier, Superposition Adder, and XOR adder.],
                        [Attempted  a circuit decomposition scheme using Solovay-Kitaev algorithm.],
                    ),
                ),
            ),
        ),
    ),
)

#let skills = (
    title: [Skills & Certifications],
    content: (
        timeline-entry(
            title: [Qiskit Global Summer School 2024],
            subtitle: [IBM],
            date: [2024],
            description: (
                (
                    value: (
                        link(
                            "https://www.credly.com/badges/e06613a7-854e-4449-9710-4b1b6ac5a68a/public_url",
                        )[Certificate of Quantum Excellence],
                        [Lectures, interactive sessions, and programming tasks on Circuit Transpilation, Modelling and Characterization of Hardware Noise, Execution on Noisy Quantum Hardware using Qiskit.],
                    ),
                ),
            ),
        ),
        timeline-entry(
            title: [Qiskit Global Summer School 2023],
            subtitle: [IBM],
            date: [2023],
            description: (
                (
                    value: (
                        link(
                            "https://www.credly.com/badges/da9a447c-7ce6-4c8d-937d-284d4725ccea/public-url",
                        )[Certificate of Quantum Excellence],
                        [Lectures, interactive sessions, and programming tasks on Dynamic circuits, Phase estimation, Factoring, Error mitigation, VQE, and Iterative phase estimation.],
                    ),
                ),
            ),
        ),
        named-entry(
            name: "Programming & Tools",
            value: (
                [*Python* (Qiskit, PyTorch, TensorCircuit)],
                [*Julia* (Yao.jl)],
                [*Linux* (NixOS)],
                [*Typst*],
                [*Git*],
                [Some of the code I have written as a part of coursework can be found on #link("https://vortriz.github.io/coursework/")[my website].],
            ),
            separator: pipe-sep,
        ),
        named-entry(
            name: "Spoken Languages",
            value: [Fluent in *English*, *Hindi*, as well as *Gujarati*.],
            separator: pipe-sep,
        ),
        named-entry(
            name: "Hobbies",
            value: [I actively develop and contribute to FOSS projects on #link("https://github.com/Vortriz")[GitHub], create websites once in a while, and spend my downtime listening to music and watching eclectic films.],
            separator: pipe-sep,
        ),
    ),
)

#let scholarships = (
    title: [Scholarships],
    content: (
        timeline-entry(
            title: [IISER Mohali #text(weight: "regular")[— #smallcaps[Merit-Cum-Means Scholarship]]],
            date: [2022 #sym.dash.em Present],
            description: [#v(-0.5em) Bi-annual scholarship supporting Bachelor's and Master's studies.],
        ),
    ),
)

#let extracurriculars = (
    title: [Extracurriculars],
    content: (
        timeline-entry(
            title: [Won #link("https://unitaryhack.dev/hackers/vortriz")[2 bounties] in unitaryHACK 2026],
            date: [June 2026],
            description: [Annual virtual hackathon organized by #link("https://unitary.foundation/")[Unitary Foundation] for contributing to open-source quantum ecosystem.],
        ),
        timeline-entry(
            title: [Conducted Workshops on Python Tooling, Julia, and Typst],
            subtitle: [IISER Pune],
            date: [March 2026],
            description: (
                (
                    value: (
                        [*Link*: #link("https://github.com/Vortriz/workshops")],
                        [Conducted a series of interactive workshops focused on addressing problems with *Python tooling* ecosystem, introducing *Julia* as a performant alternative for scientific computing, and showcasing *Typst* for high-quality document preparation.],
                    ),
                ),
            ),
        ),
        timeline-entry(
            title: [Convenor of Turing Club (Computation Club)],
            subtitle: [IISER Mohali],
            date: [2023 #sym.dash.em 2024],
            description: [Organized Hackathons, Workshops, Talks etc. Took programming help sessions.],
        ),
    ),
)

#import "./lib.typ": *
#import "globals.typ": *

#import "@preview/scienceicons:0.1.0": *

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1cm),
  // numbering: "1 / 1",
  number-align: center,
)

#set text(
  font: "Libertinus Serif",
  size: 11pt,
)

#show link: set text(fill: link-color)

#set par(leading: 5pt)

// Header Section
#header(
  name: "Rishi Vora",
  title: [Final Year BS-MS Student in Physics at IISER Mohali],
  profiles: (
    [#email-icon(color: icon-color) #link("mailto:vorarishi22@gmail.com")],
    [#email-icon(color: icon-color) #link("mailto:ms21113@iisermohali.ac.in")],
    [#website-icon(color: icon-color) #link(
        "https://vortriz.github.io",
      )[Portfolio]],
    [#github-icon(color: icon-color) #link(
        "https://github.com/Vortriz",
      )[GitHub]],
    [#linkedin-icon(color: icon-color) #link(
        "https://linkedin.com/in/rishi-vora-537b09256",
      )[LinkedIn]],
  ),
)

// Education Section
#section("Education")

#timeline-entry(
  title: [Indian Institute of Science Education and Research (IISER), #loc[Mohali]],
  subtitle: [Integrated Bachelors & Masters in Physics, with Minor in Data Science],
  date: "2021 – 2026",
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
    (
      key: [#v(0em) CPI],
      value: [7.6 / 10 (upto 9th Semester)],
    ),
  ),
)

#timeline-entry(
  title: [eduNova Science Higher Secondary School, #loc[Ahmedabad]],
  subtitle: [12th - Gujarat Secondary and Higher Secondary Education Board],
  date: "2021",
  description: (
    (key: "Grade", value: [A2]),
    (key: "Percentile", value: [92.25]),
  ),
)

// Research Experience Section
#section("Research Experience")

#timeline-entry(
  title: [Generative quantum machine learning],
  subtitle: [IISER Pune],
  date: "06/2025 – Present",
  description: (
    (
      key: "Guide",
      value: link("https://sites.iiserpune.ac.in/~santh/")[*Prof. Santhanam*],
    ),
    (
      value: (
        [Developed a modular, high-performance *Generative QML* framework in *Julia* (Yao.jl) using trainable *Parametrized Quantum Circuits* (PQCs) to synthesize quantum ensembles.],
        [Optimized the *Quantum DDPM* prototype by #link("https://link.aps.org/doi/10.1103/PhysRevLett.132.100602")[Zhang et al.], achieving a *10-15x training speedup*.],
        [*Benchmarked* hybrid optimization strategies, including from-scratch implementations of gradient-free methods (*QNSPSA*, *SPSA*, *Rotosolve*) against gradient-based approaches (Adam, AMSGrad).],
        [Exploring *Quantum Optimal Transport* (QOT) metrics such as *Quantum Wasserstein distance* as an alternative for training generative models.],
        [Scaling generative capabilities to *10-qubit systems* to study quantum chaos and localization in the *Quantum Kicked Rotor*.],
      ),
      separator: "\n",
    ),
  ),
)

#timeline-entry(
  title: [Reading project on QKD protocols],
  subtitle: [IISER Mohali],
  date: "Summer 2024",
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
      separator: "\n",
    ),
  ),
)

#timeline-entry(
  title: [Quantum algorithms and circuit decomposition],
  subtitle: [IISER Mohali],
  date: "Summer 2023",
  description: (
    (
      key: "Guide",
      value: link(
        "https://www.iisermohali.ac.in/faculty/dps/skgoyal",
      )[*Dr. Sandeep Goyal*],
    ),
    (
      value: (
        [Used Qiskit to implement basic circuits like Full Adder, Multiplier, Superposition Adder, and XOR adder.],
        [Studied Deutsch-Jozsa and Shor's algorithm.],
        [Attempted  a circuit decomposition scheme using Solovay-Kitaev algorithm.],
      ),
      separator: "\n",
    ),
  ),
)

// Certificates Section
#section("Skills & Certifications")

#timeline-entry(
  title: [Qiskit Global Summer School 2024],
  subtitle: [IBM],
  date: "2024",
  description: (
    (
      value: (
        link(
          "https://www.credly.com/badges/e06613a7-854e-4449-9710-4b1b6ac5a68a/public_url",
        )[Certificate of Quantum Excellence],
        [Lectures and Interactive Sessions on Circuit Transpilation, Modeling and Characterization of Hardware Noise, Execution on Noisy Quantum Hardware using Qiskit.],
      ),
      separator: "\n",
    ),
  ),
)

#timeline-entry(
  title: [Qiskit Global Summer School 2023],
  subtitle: [IBM],
  date: "2023",
  description: (
    (
      value: (
        link(
          "https://www.credly.com/badges/da9a447c-7ce6-4c8d-937d-284d4725ccea/public-url",
        )[Certificate of Quantum Excellence],
        [Lectures and Interactive Sessions on Dynamic circuits, Phase estimation, Factoring, Error mitigation, Variational Quantum Eigensolver and Iterative phase estimation.],
      ),
      separator: "\n",
    ),
  ),
)

#skill-entry(
  name: "Programming & Systems",
  value: (
    [*Python* (Qiskit, PyTorch, TensorCircuit)],
    [*Julia* (Yao.jl)],
    [*Linux* (NixOS)],
  ),
  separator: pipe-sep,
)

#skill-entry(
  name: "Tools & Frameworks",
  value: (
    [*Git* / *GitHub*],
    [*Typst*],
  ),
  separator: pipe-sep,
)

#skill-entry(
  name: "Languages",
  value: [Fluent in *English*, *Hindi*, as well as *Gujarati*],
  separator: pipe-sep,
)

#skill-entry(
  name: "Hobbies",
  value: (
    [Maintaining and contributing to FOSS projects on #link("https://github.com/Vortriz")[*GitHub*]],
    [Web Development],
    [Listening to music],
    [Watching eclectic films],
  ),
  separator: pipe-sep,
)

// Scholarships Section
#section("Scholarships")

#timeline-entry(
  title: [IISER Mohali],
  subtitle: [Merit-Cum-Means Scholarship],
  date: "2021 – Present",
  description: [Bi-annual scholarship supporting Bachelor's and Master's studies.],
)

// Leadership & Extracurriculars Section
#section("Extracurriculars")

#timeline-entry(
  title: [Conducted Workshops on Python Tooling, Julia, and Typst],
  subtitle: [IISER Pune],
  date: "March 2026",
  description: (
    (
      value: (
        [*Link*: #link("https://github.com/Vortriz/workshops")],
        [Conducted a series of interactive workshops focused on addressing problems with *Python tooling* ecosystem, introducing *Julia* as a performant alternative for scientific computing, and showcasing *Typst* for high-quality document preparation.],
      ),
      separator: "\n",
    ),
  ),
)

#timeline-entry(
  title: [Convenor of Turing Club],
  subtitle: [IISER Mohali],
  date: "2023 – 2024",
  description: [Organized Hackathons, Workshops, Talks etc. Took programming help sessions for junior batches.],
)


# CV

A minimal, professional CV built with [Typst](https://typst.app/).

## Overview

While the content of this repository reflects my personal information, the structure is designed to be easily adaptable; anyone is welcome to use this as a template to create their own CV.

## Prerequisites

- [Typst](https://github.com/typst/typst)
- [Nix](https://nixos.org/) (optional, for the development environment)

## Building

To compile the CV to PDF, run:

```bash
typst compile cv.typ
```

Or, to watch for changes:

```bash
typst watch cv.typ
```

## Structure

- `cv.typ`: The main CV content and layout.
- `lib.typ`: Custom functions and components (headers, sections, timeline entries).
- `globals.typ`: Color definitions and global constants.
- `flake.nix`: Nix flake for a reproducible build environment.

## Credits

This CV design is inspired by [academicv](https://github.com/roaldarbol/academicv) by roaldarbol.

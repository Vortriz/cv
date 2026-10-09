#import "@preview/fontawesome:0.6.2": *

#let pipe-sep = [#h(4pt) | #h(4pt)]

#let inline-list(sep: pipe-sep, ..items) = items.pos().join(sep)

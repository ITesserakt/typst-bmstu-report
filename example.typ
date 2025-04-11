#import "src/lib.typ": template

#show: template.with(
  author: "Example"
)

#figure(
  caption: "Test",
  table(
    columns: 3,
    "1", "2", "3",
    "4", "5", "6"
  )
)

#figure(
  caption: "Test",
  table(
    columns: 3,
    "1", "2", "3",
    "4", "5", "6"
  )
)

#figure(
  caption: "Test",
  kind: image,
  table(
    columns: 3,
    "1", "2", "3",
    "4", "5", "6"
  )
)

#figure(
  caption: "Test",
  kind: image,
  table(
    columns: 3,
    "1", "2", "3",
    "4", "5", "6"
  )
)

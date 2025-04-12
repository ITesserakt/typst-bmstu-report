#import "src/lib.typ": template, appendix

#show: template.with(
  author: "Example"
)

= Заголовок 1

#lorem(20)

== Заголовок 2

#lorem(50)

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

== Заголовок 3

#lorem(50)

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

```c
int main() {
  return 69;
}
```

#pagebreak()
#appendix[
  = Заголовок 1

  #lorem(100)
]

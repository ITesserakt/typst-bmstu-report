#import "common.typ": Large, large, inline, underwrite

#let mk_title_header() = {
  set align(center)
  set par(spacing: 0pt)
  
  layout(size => {
    table(
      columns: (18%, 78%),
      inset: 0pt,
      stroke: none,
      inline(
        width: 0.14 * size.width,
        [#v(0.6em) #image("bmstu.svg")]
      ),
      box[
        #set align(center)
        #set par(justify: false)
        Министерство~науки~и~высшего~образования~Российской~Федерации
        федеральное~государственное~автономное~образовательное
        учреждение~высшего~профессионального~образования
        "Московский~государственный~технический~университет~имени
        Н.Э.~Баумана (национальный~исследовательский~университет)" #linebreak()
        (МГТУ~им.~Н.Э.~Баумана)
      ]
    )
  })
  
  v(0.5em)
  line(length: 100%, stroke: 0.75pt)
}

#let mk_title_location(faculty, department) = {
  table(
    inset: (x: 0pt, y: 0.5em),
    stroke: none,
    columns: (auto, auto),
    [#h(1em) ФАКУЛЬТЕТ #h(1em)],
    faculty,
    [#h(1em) КАФЕДРА],
    department
  )
}

#let mk_title_main(title, discipline) = {
  set align(center)
  
  Large(underline(upper(title)))
  linebreak()
  large[по дисциплине "#discipline"]
}

#let mk_title_properties(author_full, group, theme: none, variant: none) = {
  set align(center)
  show: large
  
  let theme_prop = if theme != none {
    (table.hline(), "Тема:", theme)
  } else {
    ()
  }
  
  let variant_prop = if variant != none {
    (table.hline(), "Вариант:", [#variant])
  } else {
    ()
  }
  
  table(
    columns: (30%, 50%),
    stroke: none,
    align: left,
    "Студент:", author_full,
    table.hline(),
    "Группа:", group,
    ..theme_prop,
    ..variant_prop
  )
}

#let mk_title_authors(author, teacher, teacher_position) = {
  set align(center)
  
  table(
    columns: (45%, 25%, 25%),
    align: bottom + center,
    stroke: none,
    table.cell(align: left + top, "Студент"), underwrite("подпись, дата", h(3cm)), underwrite("Фамилия, И.О.", author),
    table.cell(align: left + top, teacher_position), underwrite("подпись, дата", h(3cm)), underwrite("Фамилия, И.О.", teacher),
  )
}

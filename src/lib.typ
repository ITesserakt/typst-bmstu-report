#import "title.typ": mk_title_header, mk_title_location, mk_title_main, mk_title_properties, mk_title_authors

#let template(
  title: "отчет по лабораторной работе",
  task_type: "лабораторная работа",
  discipline: none,
  theme: none,
  variant: none,
  semestr: "Осенний семестр",
  year: datetime.today().year(),
  country: "Россия",
  city: "Москва",
  faculty: ["Робототехника и комплексная автоматизация"],
  department: ["Системы автоматизированного проектирования (РК-6)"],
  author_full: none,
  author: none,
  group: none,
  teacher: none,
  teacher_position: "Преподаватель",
  body
) = {
  import "preamble.typ": conf
  show: conf
  
  set document(author: author, title: theme)
  
  set page(numbering: none)
  stack(
    spacing: none,
    
    mk_title_header(),
    v(1em),
    mk_title_location(faculty, department),
    
    v(1fr),
    mk_title_main(title, discipline),
    v(1fr),
    mk_title_properties(author_full, group, theme: theme, variant: variant),
    v(1fr),
    mk_title_authors(author, teacher, teacher_position),
    v(2fr),
    align(center, [#city, #year\г.])
  )
  
  set page(numbering: "1")
  pagebreak()
  outline(depth: 3, indent: 0pt)
  pagebreak()
  
  body
}

#let appendix(body) = {
  counter(heading).update(0)
  
  show heading.where(level:1): set heading(numbering: "Приложение A. ", supplement: [Приложение])
  show heading.where(level:2): set heading(numbering: "A.1 ", supplement: [Приложение])
  
  body
}

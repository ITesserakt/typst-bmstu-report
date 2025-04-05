#let conf(doc) = {
  set page(
    paper: "a4", 
    margin: (left: 3cm, right: 1.5cm, top: 2cm, bottom: 2cm),
    numbering: "1",
    number-align: center + bottom
  )
  
  set text(
    font: "Liberation Serif",
    size: 12pt,
    lang: "ru"
  )
  
  set par(
    justify: true,
    linebreaks: "optimized",
    first-line-indent: (amount: 1.25cm, all: true),
    spacing: 0.75em,
    leading: 0.75em,
  )
  
  set heading(
    numbering: (..nums) => {
      let nums_pos = nums.pos()
      // if nums_pos.len() == 1 { h(1.25cm) } else { h(0pt) }
      nums_pos.map(str).join(".")
    },
    outlined: true,
    supplement: "Раздел",
  )
  
  set figure(supplement: "Рисунок")
  set figure.caption(separator: [ -- ])
  show figure: set block(breakable: true)
  
  [#doc]
}
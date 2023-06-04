// Constant
#let primaryColor = blue.darken(20%)

#let showSkill(skill) = box(inset: (x: 0.2em), [#box(height: 1em, inset: (top: skill.at("iconInset", default: 0%)) ,skill.icon)  #skill.name])


// Project function
#let project(title: "", author: (), skills: (), skillsToPromove: (), body) = {
  // Set the document's basic properties.
  set document(author: author.name, title: title)
  set page(margin: (left: 20mm, right: 20mm, top: 20mm, bottom: 20mm))
  set text(font: "Linux Libertine", lang: "fr")

  show heading: set text(primaryColor)
  show heading.where(
  level: 3
): set text(1.3em)


  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, primaryColor, title))
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
      align(center)[
        #text(size: 1.5em, [#author.name]) \ \
        #text(size: 2em, primaryColor.lighten(20%), [*#author.jobTitle*]) \
        \
        #link("mailto:" + author.email)[#author.email] \
        #author.phone \
        #if (author.at("twitter", default: "").len() > 0) [
          #link("https://twitter.com/" + author.twitter)[
            #box(height: 12pt, image("icons/twitter.svg", height: 1.5em))
            #author.twitter
          ]
        ]
        #if (author.at("linkedin", default: "").len() > 0) [
          #link("https://linkedin.com/" + author.linkedin)[
            #box(height: 12pt, image("icons/linkedin.svg", height: 1.5em))
            #author.linkedin
          ]
        ]
        #if (author.at("github", default: "").len() > 0) [
          #link("https://github.com/" + author.github)[
            #box(height: 12pt, image("icons/github.svg", height: 1.5em))
            #author.github
          ]
        ]
      ]
  )
    
  // Skill summary
    pad(
    top: 5em,
    bottom: 2em,
    [
    #box(stroke: (bottom: 1pt + primaryColor.lighten(60%)), width: 100%, outset: 1em,
    [
      = SYNTHÈSE 
    ])
    \
    \
    #table(
      columns: (auto, 1fr),
      stroke: none,
      align: start + horizon,
      fill: (_, row) => {
        if calc.odd(row) {
          primaryColor.lighten(90%)
        } else {
          white
        }
      },
    ..skills.keys().map((categoryName) => (
      box(heading(level: 2, outlined: false, upper(categoryName))),
      box(width: 100%, inset: 0.5em, skills.at(categoryName).values().map(skill =>
        showSkill(skill)
      ).join(" "))
      )
    ).flatten()
  )
])

pagebreak()

set page(
  margin: (top: 8em, bottom: 20pt),
  header: {
    set text(gray.darken(60%))
    grid(columns: (auto, 1fr),
    smallcaps[#author.name \ #author.jobTitle],
    {
      set align(top + end)
      smallcaps[Page #counter(page).display(
      "1 sur 1",
      both: true,
    )
  ]
}
)
},
)



  // Main body.
  set par(justify: true)
  
  body
}

#let labelPage(label) = locate(
    (loc) => [
      #let labelLocation = query(label, loc)
      #labelLocation.first().location().page()
    ]
  )

  
#let linkLabel(content, label) = link(label, [#content #text(gray.darken(30%), smallcaps([\[Détails page #labelPage(label)\]]))])

#let job(enterpriseName, jobTitle, beginingDate, endDate, duration, contexte, missions) = {
  [
    #box(
      fill: primaryColor.lighten(90%),
      width: 100%, 
      inset: 2em,
      grid(columns: (auto, 1fr),
      [ 
      == #enterpriseName \ 
      #text(primaryColor.darken(30%), weight: "extrabold", jobTitle)
    ],
      [
        #set align(end)
        #set text(gray.darken(30%), weight: "extrabold")
        #beginingDate - #endDate \
        #duration
      ]
      ),
    )
    
    
    #set list(indent: 2em)
    #missions
  ]
}

#let mission(missionName, role: "", beginingDate: "", endDate: "", duration: "", contexte: "", missions: "", skillsConcerned: (), veryLong: false) = {
  if (veryLong) {
    pagebreak()
  }
  
  block(
    inset: 2em,
    breakable: veryLong,
    [
    #box(
      fill: primaryColor.lighten(90%),
      stroke: (
        left: 2pt + primaryColor.lighten(85%),
        bottom: 2pt + primaryColor.lighten(85%)
    ),
      width: 100%, 
      inset: 1em,
      grid(columns: (auto, 1fr),
      [ 
      == #missionName \
      #text(primaryColor.darken(30%), weight: "extrabold", role)
    ],
      [
        #set align(end)
        #set text(gray.darken(30%), weight: "extrabold")
        #beginingDate - #endDate \
        #duration
      ]
      ),
    )
    #show heading: it => box(inset: (y: 1em), text(it))
    === Contexte

    #contexte

    === Missions

    #set list(indent: 2em)
    #missions

    #block(breakable: false, width: 100%, [
    === Environnement techniques
    #set align(center)
    #skillsConcerned.map(skill => showSkill(skill)).join(" ")
    ])
  ])
}

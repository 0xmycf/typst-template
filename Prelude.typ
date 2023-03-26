#let applyStyle( author: "mycf"
                , title: "Template"
                , bibPath: "./bib.bib"
                , lang: "de"
                , doc
                ) = {
/********************************************************************************
* Document
********************************************************************************/
  set document(
        title: title
      , author: author
      )
/********************************************************************************
* Page
********************************************************************************/
  set page(
      paper: "a4"
    , margin: (
          top:    3cm
        , bottom: 3cm
        , right:  3cm
        , left:   3cm
        )
    , header: align(right)[
        #set text(12pt)
        #smallcaps[#author]
        #h(1fr) #title
      ]
    , numbering: "1"
  )

/********************************************************************************
* Text
********************************************************************************/
  set text(
     font: ( "KPRoman"
           , "EBGaramond"
           , "Courier New"
           , "Times New Roman"
           , "FiraCode"
           , "Noto Sans CJK TC"
           , "Adobe Kaiti Std"
           )
    , fallback: false // so we don't inject some proprietary font
    , style: "normal"
    , weight: "regular"
    , overhang: false // true might make pars visually more pleasing
    , lang: lang
    , ligatures: true
    , number-type: "lining" // I like this more in text
    , slashed-zero: true
    , fractions: true // displays 3/4 as one glyph
    , size: 12pt
  )

/********************************************************************************
* paragraphs
********************************************************************************/
  set par(justify: true)


  // idk if this is the proper way

  /* show heading.where( */
  /*   level: 1 */
  /* ): set block(spacing: 0.9em) */

  /* show heading.where( */
  /*   level: 2 */
  /* ): set block(spacing: 0.7em) */

  /* show heading.where( */
  /*   level: 3 */
  /* ): set block(below: 0.6em) */

  show heading.where(
    level: 4
  ): it => [ *#it.body:* ]

/********************************************************************************
* Headings
********************************************************************************/
  set heading(numbering: "1.1.1")

/********************************************************************************
* outline
********************************************************************************/
  set outline( depth: 3
             , indent: true
             )

/********************************************************************************
* Bibliography
********************************************************************************/
  set bibliography(style: "apa")
  set bibliography(title: "Literaturverzeichnis") if lang == "de"

/********************************************************************************
*
* Content
*
********************************************************************************/

  set page(numbering: "I")
  outline()
  pagebreak()
  set page(numbering: "1")
  counter(page).update(1)

  doc

  pagebreak()
  set page(numbering: "i")
  counter(page).update(1)
  bibliography(bibPath)
}

#let citep(..keys) = cite(..keys, brackets: false)

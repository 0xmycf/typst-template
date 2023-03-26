# Template for Typst documents

[https://github.com/typst/typst](Learn more about Typst)

Usage:

1. Download the Prelude file into your project directory
   or add a git submodule to it.
   `curl -o Prelude.typ https://raw.githubusercontent.com/0xmycf/typst-template/main/Prelude.typ`
2. Create your main File and import the Prelude
   ```typ
   #import "./Prelude.typ": applyStyle, citep
   ```
3. Configure the Document:
   ```typ
   #show: doc => applyStyle( author: "Your Name" // def is mycf
                           , title: "Title of your Document" // def is Template
                           , bibPath: "Path to your bibliography" // def ./bib.bib
                           , lang: "en" // def is de
                           , doc
                           )
   ```

## Notes

- Currently I only support one author.
  Adding more authors should be straight forward (switch a String to a List).
- `citep` is an inline citation function like citep in latex.
  Its defined as follows: ```typ #let citep(..keys) = cite(..keys, brackets: false)```
- test.typ shows a test file, test.pdf is the corresponding rendered pdf file.
- The TOC is broken. I don't know if this is an typst issue or how i configured it.
  The page counter displays the wrong numbers for the toc and bibliography.
- font families that are used are (in that order):
  ```typ
  font: ( "KPRoman"
        , "EBGaramond"
        , "Courier New"
        , "Times New Roman"
        , "FiraCode"
        , "Noto Sans CJK TC"
        , "Adobe Kaiti Std"
        )
  ```

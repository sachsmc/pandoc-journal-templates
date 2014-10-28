#Pandoc templates for the major statistics journals

##About
Write your statistics and biostatistics in markdown so that you can focus on the content, not the formatting. These templates use pandoc to convert the markdown into latex, and then the appropriate journal template is applied. Work on the content and these templates will get you 99\% of the way to submission. Need to submit to a different journal later? No problem, just apply a different template. This is my effort to rid the statistics world of the need to wrestle with latex for a journal submission. 

##Usage

### Dependencies

- [Make](http://www.gnu.org/software/make/)
- [Pandoc](http://johnmacfarlane.net/pandoc/)
- [Latex](http://latex-project.org/ftp.html)

#### Optional

##### For evaluating `R` code
- [R](http://cran.us.r-project.org/)
- [knitr](http://yihui.name/knitr/)


### Getting started
Clone or download this repository to your working computer. Then, locate the folder corresponding to the journal you wish to submit to. Use the following table to find your journal. Can't find your journal? [Request it here](https://github.com/sachsmc/pandoc-journal-templates/issues/new). 

Folder name | Journal(s) | Link to style guide
-----------|-------------|----------------
`amstat` | JASA, TAS, JBES, JCGS, SBP, Technometrics | [amstat](http://journals.taylorandfrancis.com/amstat/asa-style-guide/)
`biometrical-journal` | Biometrical Journal | [biometrical-journal](http://onlinelibrary.wiley.com/journal/10.1002/(ISSN)1521-4036/homepage/ForAuthors.html)
`biometrics` | Biometrics | [biometrics](http://www.biometrics.tibs.org/latexdocumentclass.htm)
`biometrika` | Biometrika | [biometrika](http://www.oxfordjournals.org/our_journals/biomet/for_authors/)
`biostatistics` | Biostatistics | [biostatistics](http://www.oxfordjournals.org/our_journals/biosts/for_authors/msprep_submission.html)
`ims` | AOAS, AOP, AAP, AOS, SSY | [ims](http://www.e-publications.org/ims/support/ims-instructions.html)
`jss` | Journal of Statistical Software | [jss](http://www.jstatsoft.org/style)
`stats-in-med` | Statistics in Medicine | [statmed](http://onlinelibrary.wiley.com/journal/10.1002/(ISSN)1097-0258/homepage/ForAuthors.html)

### Using the template
Copy the entire contents of the appropriate folder to your paper's working directory. If you are working on a paper called `mypaper` and it is located in `~/Papers/October/` and you want to submit to Biostatistics, then copy the contents of the `biostatistics` folder to `~/Papers/October/`. The folders contain everything necessary to compile a markdown document into the correct Latex format. 

Each folder comes with an example Rmarkdown file called `example.Rmd` and its associated bib file `example.bib`. The important metadata must be supplied in the yaml front-matter of the markdown document. For example, the author, title, bibliography, and abstract are defined there: 

```yaml
---
title: Pandoc templates for common statistics journals
author:
- first: Michael 
  last: Sachs
  affilnum: a,b
  email: michael.sachs@nih.gov
  ekey: e1
- first: Homer
  last: Simpson
  affilnum: b
  email: ChunkyLover53@aol.com
  ekey: e2
affiliation:
- name: National Cancer Institute
  key: a
- name: Moe's Tavern
  key: b
date: October 2014
year: 2014
abstract: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non ex metus. Etiam tempor nisl at lorem facilisis, vel malesuada est mollis. Pellentesque nunc lacus, porttitor in mollis quis, pellentesque quis sem. Nunc consequat, elit vel tincidunt tincidunt, urna arcu efficitur turpis, ac mollis turpis velit vitae libero. Aenean mauris lacus, blandit a nulla a, scelerisque lobortis dolor. Etiam viverra, nibh vehicula vehicula congue, nisl dui mattis risus, quis convallis massa nisi quis elit. Maecenas gravida nunc nec dignissim consequat. Fusce scelerisque magna ut odio ullamcorper dapibus. Vivamus et dignissim nunc.'
keywords: In hac; habitasse; platea; dictumst
bibliography: example
...
```

Each journal has their own requirements for front-matter. For details, see the [Wiki](http://github.com/sachsmc/pandoc-journal-templates/wiki), or look at the example headers. 

When you are ready to compile, it is simple from the command line: 

```bash
make example.pdf
```

If you have an Rmd file, it will automatically be processed by `knitr`. If you have just an .md file, no problem, it will be processed directly. To save the intermediate tex file

```bash
make example.pdf example.tex
```

You may need to edit the tex by hand, but these templates will get you 99\% of the way to submission. 

##License
These materials are public domain and made available with a [Creative Commons CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/legalcode) dedication. In short, I waive all rights to the work worldwide under copyright law, including all related and neighboring rights, to the extent allowed by law. You can copy, modify, distribute, and perform the work, even for commercial purposes, all without asking permission. I make no warranties about the work, and disclaim liability for all uses of the work, to the fullest extent permitted by applicable law.


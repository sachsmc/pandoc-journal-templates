
%.md: %.Rmd
	Rscript -e "library(methods); library(knitr); knit('$<')" 

%.tex:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w latex -s -S --no-highlight --latex-engine=pdflatex --template=amstat.latex --filter pandoc-citeproc --csl=apa-no-doi-no-issue.csl -o $@ $<

%.pdf:	%.tex
	pdflatex $(basename $<)
	pdflatex $(basename $<)
	rm -f *.aux *.bcf *.blg *.log *.out

clean:
	rm -f *.pdf *.tex *.aux *.bcf *.blg *.log *.out
	
reknit:
	rm -f *.md
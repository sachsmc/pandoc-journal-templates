
%.md: %.Rmd
	Rscript -e "library(methods); library(knitr); knit('$<')" 

%.tex:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w latex -s -S --no-highlight --latex-engine=pdflatex --template=rjournal.latex --natbib -o $@ $<

%.pdf:	%.tex
	sed -i '' 's/lastname/$(basename $<)/g' RJwrapper.tex
	pdflatex RJwrapper
	bibtex RJwrapper
	pdflatex RJwrapper
	pdflatex RJwrapper
	rm -f *.aux *.bcf *.blg *.log *.out *.bbl *.brf

clean:
	rm -f *.pdf *.tex *.aux *.bcf *.blg *.log *.out
	
reknit:
	rm -f *.md
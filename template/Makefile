pdf:
	pdflatex main.tex
	mkdir -p build
	mv main.pdf build
	mv *.aux build
	mv *.out build
	mv *.toc build
	mv *.nlo build
	mv *.lot build
	mv *.lof build
	mv *.idx build
	mv *.log build


clean:
	rm -rf build

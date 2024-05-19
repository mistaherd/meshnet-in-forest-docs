test.bat
pdflatex main.tex
makeindex main.idx
bibtex main.aux
pdflatex main.tex
pdflatex main.tex
main.pdf
clean.bat
cls
all:
	make book
	make ./docs/informations.html

book:
	R -e 'bookdown::render_book(".")'

./docs/informations.html: ./notes/informations.Rmd
	R -e 'rmarkdown::render("./notes/informations.Rmd")'
	mv notes/informations.html docs/.

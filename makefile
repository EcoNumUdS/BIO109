# Get name of main folders (cours..)
COURS = $(wildcard cours*)
# append the html and Rmd file for each main folder (targets)
HTML = $(addsuffix /index.html, $(COURS))


all: $(COURS)

# run make for each subdirectory (COURS)
$(COURS):
	$(MAKE) -C $@

deploy:
	mkdir slides
	cp -r ./assets ./slides
	for dir in $(COURS) ; do \
			mkdir -p ./slides/$$dir ; \
			cp ./$$dir/index.html ./slides/$$dir ; \
			cp ./$$dir/index.pdf ./slides/$$dir ; \
			cp -r ./$$dir/assets ./slides/$$dir ; \
			if [ -d "./$$dir/donnees"]; then cp -r ./$$dir/donnees ./slides/$$dir; fi ; \
			if [ -d "./$$dir/index_files" ]; then cp -r ./$$dir/index_files ./slides/$$dir; fi ; \
	done
	Rscript -e "rmarkdown::render('README.md', output_file = 'index.html', output_dir = 'slides')"

install:
	Rscript -e 'if (!require(rmarkdown)) install.packages("rmarkdown"); if (!require(knitr)) install.packages("knitr"); if (!require(xaringan)) install.packages("xaringan")'

clean:
	rm $(HTML)
	rm -r cours*/index_files

.PHONY: all $(COURS) deploy install clean
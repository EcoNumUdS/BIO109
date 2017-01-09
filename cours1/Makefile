inpu := $(wildcard *.Rmd)
inpr := $(wildcard scripts/*.R)
html = ./pres/index.html

all: $(html)

$(html): $(inpu) $(inpr)
	rm -rf ./pres/.cache
	 cat *.Rmd > ./pres/index.Rmd
	Rscript --no-site-file --no-init-file scripts/get_slidify.R
	~/Documents/Git/decktape/phantomjs ~/Documents/Git/decktape/decktape.js -s 1280x720 https://econumuds.github.io/BIO109/cours1/ ./pres/assets/pdf/S1-BIO109.pdf

clean:
	rm -rf pres/.cache pres/index.*

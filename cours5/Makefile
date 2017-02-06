inpu := $(wildcard *.Rmd)
inpr := $(wildcard scripts/*.R)
html = ./pres/index.html

all: $(html)

$(html): $(inpu) $(inpr)
	rm -rf ./pres/.cache
	 cat *.Rmd > ./pres/index.Rmd
	Rscript --no-site-file --no-init-file scripts/get_slidify.R
	# open pres/index.html
	# ~/Codes/Github/decktape/bin/phantomjs ~/Codes/Github/decktape/decktape.js -s 1280x720 file:///Users/KevCaz/Documents/Teaching/diapoBIO500/pres/index.html#1 ./pres/diapo500.pdf

clean:
	rm -rf pres/.cache pres/index.*

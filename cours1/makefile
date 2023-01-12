HTML = index.html
# Get name of all Rmd files
RMD = index.Rmd
# local assets
lASSETS := $(shell find assets)
# global assets
gASSETS := $(shell find ../assets)
# local data
lDATA := $(shell find donnees)

# assets
$(HTML): $(RMD) $(lASSETS) $(gASSETS) $(lDATA)
	Rscript -e "rmarkdown::render('$(RMD)', output_file = '$(HTML)')"
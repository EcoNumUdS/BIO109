#!/bin/sh

rm -rf ./pres/.cache
cat *.Rmd > ./pres/index.Rmd
Rscript --no-site-file --no-init-file ./scripts/get_slidify.R

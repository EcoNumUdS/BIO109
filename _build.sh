#!/bin/sh

for dir in $(ls -d cours*); do
    cd $dir
    Rscript -e "rmarkdown::render('index.Rmd')"
    cd ..
done

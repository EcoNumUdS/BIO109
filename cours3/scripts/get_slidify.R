
## Installation package slidify if not installed
if (!require(slidify)) devtools::install_github("ramnathv/slidify")
if (!require(slidifyLibraries)) devtools::install_github("ramnathv/slidifyLibraries")
slidify::slidify('./pres/index.Rmd')

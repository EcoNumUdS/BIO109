## Installation package slidify if not installed
install.packages("devtools")
devtools::install_github("ramnathv/slidify")
devtools::install_github("ramnathv/slidifyLibraries")
slidify::slidify('./pres/index.Rmd')

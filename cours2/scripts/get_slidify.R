## Installation package slidify if not installed
if (!require(devtools)) install.packages("devtools")

install.packages("knitr")
install.packages("markdown")
install.packages("yaml")
install.packages("whisker")
install.packages("stringr")
devtools::install_github("ramnathv/slidifyLibraries")
devtools::install_github("ramnathv/slidify")

slidify::slidify('./pres/index.Rmd')

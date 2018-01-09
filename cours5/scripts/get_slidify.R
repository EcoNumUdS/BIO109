## Installation package slidify if not installed
if (!require(devtools)) install.packages("devtools")
if (!require(slidify)){
  deps <- c("knitr", "markdown", "yaml", "whisker", "stringr")
  install.packages(deps)
  devtools::install_github("ramnathv/slidifyLibraries")
  devtools::install_github("ramnathv/slidify")
}

slidify::slidify('./pres/index.Rmd')

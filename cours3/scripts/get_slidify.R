## Installation package slidify if not installed
if (!require(devtools)) install.packages("devtools")
if (!require(slidify)){
  devtools::install_github("ramnathv/slidify")

  deps <- c("knitr", "markdown", "yaml", "whisker", "stringr")
  install.packages(deps)
}
if (!require(slidifyLibraries)) devtools::install_github("ramnathv/slidifyLibraries")
if (!require(rCharts)) devtools::install_github("ramnathv/rCharts")

slidify::slidify('./pres/index.Rmd')

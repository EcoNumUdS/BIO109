## Installation package slidify if not installed
if (!require(devtools)) install.packages("devtools")
slidify::slidify('./pres/index.Rmd')

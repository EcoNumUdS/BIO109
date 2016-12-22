## @knitr plot1
par(bg = "grey25", fg="grey95")
x <- seq(-10,10,0.01)
plot(x,dnorm(x), type="n", ann=F, axes=F)
lines(x,dnorm(x), lwd=2)
box(bty="l")
abline(h=.25, v=0, lty=2)

## @knitr plot2
par(bg = "transparent")
plot(0,0)

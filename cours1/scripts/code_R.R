## @knitr load_data
load('../data/xyz.RData')
## @knitr end_load_data

################################################################################

## @knitr component_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
## @knitr end_component_1

################################################################################

## @knitr component_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'lightgray',
    col.axis = 'lightgray',
    fg = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
par(xpd = TRUE)
rect(0.455, 0.455, 1.471, 1.473, col = 'transparent', border = 'black')
text(0.45, 0.7, 'Chart area', font = 2, col = 'black', cex = 2, pos = 4)
par(xpd = FALSE)
## @knitr end_component_2

################################################################################
################################################################################

## @knitr component_3
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'lightgray',
    col.axis = 'lightgray',
    fg = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
box('plot', col = 'black', lwd = 1)
text(.6, 1.38, 'Plot area', font = 2, col = 'black', cex = 2, pos = 4)
## @knitr end_component_3

################################################################################

## @knitr component_4
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'lightgray',
    col.axis = 'lightgray',
    fg = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1, col = 'black')
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5, col = 'black')
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
## @knitr end_component_4

################################################################################

## @knitr component_5
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
## @knitr end_component_5

################################################################################

## @knitr component_6
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'lightgray',
    col.axis = 'lightgray',
    fg = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2, col = 'black')
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
## @knitr end_component_6

################################################################################

## @knitr component_7
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'lightgray',
    col.axis = 'lightgray',
    fg = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25,
       col = 'black', text.col = 'black')
## @knitr end_component_7

################################################################################

## @knitr pie3d_1
library(plotrix)
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'lightgray',
    col = 'black')
slices <- c(10, 12, 4, 16, 8)
lbls <- c("A", "B", "C", "D", "E")
pie3D(slices, labels = lbls, explode = 0.1,
  	main = "", labelcol = 'black')
## @knitr end_pie3d_1

################################################################################

## @knitr pie3d_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
slices <- c(4, 6, 10, 12, 16)
lbls <- c("C", "E", "A", "B", "D")
bar <- barplot(slices, names.arg = '', col = 'black', horiz = TRUE, las = 1, xlim = c(0, 18), axes = F)
text(slices + 1, bar[ , 1], lbls, font = 1, cex = 1.5)
axis(1, seq(0, 18, by = 2), seq(0, 18, by = 2), pos = par()$usr[3])
mtext('x-axis', side = 1, line = 2)
## @knitr end_pie3d_2

################################################################################

## @knitr bubble_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
plot(dat[ , c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, las = 1, col = palette())
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', legend = 1:8,
       ncol = 4, pch = 19, bty = 'n', cex = 1.25, col = palette())
## @knitr end_bubble_1

################################################################################

## @knitr bubble_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
plot(dat[ , c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 21, cex = (1:8)/1.5, las = 1, col = 'transparent', bg = '#00000088')
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('2', '4', '6', '8'), pt.cex = seq(2, 8, by = 2)/1.5, x.intersp = 1.1,
       ncol = 4, pch = 21, pt.bg = '#00000088', bty = 'n', cex = 1.25, col = 'transparent')
## @knitr end_bubble_2

################################################################################

## @knitr tufte_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
slices <- c(13, 16, 11, 12, 6, 19, 15, 13, 14)
lbls <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", 'Aug', 'Sep')
bar <- barplot(slices, names.arg = lbls, col = '#4b4b4b', border = 'transparent', las = 1, ylim = c(0, 20), axes = F)
rect(par()$usr[1], par()$usr[3], par()$usr[2], par()$usr[4], col = '#c1dfe2', border = 'transparent')
barplot(slices, names.arg = '', col = '#4b4b4b', border = 'transparent', axes = FALSE, ylim = c(0, 20), add = TRUE)
par(xpd = TRUE)
box('plot')
par(xpd = FALSE)
abline(h = seq(5, 15, by = 5))
abline(v = bar[ , 1])
abline(v = (bar[-1, 1]+bar[-nrow(bar), 1])/2)
abline(v = bar[1, 1] - .6)
abline(v = bar[nrow(bar), 1] + .6)
axis(2, seq(5, 15, by = 5), paste(seq(5, 15, by = 5), '%', sep = ''), pos = par()$usr[1])
mtext('y-axis', side = 2, line = 2.5)
## @knitr end_tufte_1

################################################################################

## @knitr tufte_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = '#4b4b4b',
    col.axis = '#4b4b4b',
    fg = '#4b4b4b',
    col = '#4b4b4b')
slices <- c(13, 16, 11, 12, 6, 19, 15, 13, 14)
lbls <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", 'Aug', 'Sep')
bar <- barplot(slices, names.arg = lbls, col = '#4b4b4b', border = 'transparent', las = 1, ylim = c(0, 20), axes = F)
abline(h = seq(5, 15, by = 5), col = 'white')
axis(2, seq(5, 15, by = 5), paste(seq(5, 15, by = 5), '%', sep = ''), pos = par()$usr[1], las = 1, lwd = 0, lwd.ticks = 1)
lines(c(bar[1, 1]-.5, bar[nrow(bar), 1]+.5), c(0, 0), lwd = 2)
## @knitr end_tufte_2

################################################################################

## @knitr scatter
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
## @knitr end_scatter

################################################################################

## @knitr scatter_cmd
plot(x, y, ...)
points(x, y, ...)
title(main, ...)
legend(legend, ...)
## @knitr end_scatter_cmd

################################################################################

## @knitr lattice_cmd
library(lattice)
xyplot(y ~ x, dat, group = z,
       auto.key = list(columns = 2))
## @knitr end_lattice_cmd

################################################################################

## @knitr lattice
library(lattice)
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
xyplot(y ~ x, dat, group = z,
       auto.key = list(columns = 2))
## @knitr end_lattice

################################################################################

## @knitr ggplot_cmd
library(ggplot2)
p <- ggplot(data = dat,
            aes(x = x, y = y, colour = z))
p <- p + geom_point(size = 3)
p
## @knitr end_ggplot_cmd

################################################################################

## @knitr ggplot
library(ggplot2)
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
p <- ggplot(data = dat, aes(x = x, y = y, colour = z))
(p <- p + geom_point(size = 3))
## @knitr end_ggplot

################################################################################

## @knitr plotrix
par(mar = c(4, 4, 1.5, 1.5), bg = 'transparent')
library(plotrix)
data(soils)
triax.plot(soils[1 : 10, ], show.grid = TRUE, show.legend = TRUE,
           col.symbols = rainbow(10), pch = 19)
## @knitr end_plotrix

################################################################################

## @knitr plotrix_cmd
library(plotrix)
data(soils)
triax.plot(...)
## @knitr end_plotrix_cmd

################################################################################

## @knitr gplots
par(mar = c(4, 4, 1.5, 1.5), bg = 'transparent', fg = "#8b0000")
library(gplots, verbose = FALSE)
ls_venn <- list()
for (i in 1 : 4)
    ls_venn[[i]] <- floor(runif(100, 0, 150))
venn(ls_venn)
## @knitr end_gplots

################################################################################

## @knitr gplots_cmd
library(gplots)
venn(...)
## @knitr end_gplots_cmd

################################################################################

## @knitr the_plot
par(mfrow = c(1, 3))
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1, bty = 'n', col = '#a6611a')
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 19, cex = 1.5, col = '#018571')

x <- seq(50, 0, by = -10)

barplot(height = x,
       names.arg = LETTERS[1:length(x)],
       col = '#08519c',
       border = '#2c7fb8',
       las = 1,
       ylab = 'y-axis')

x <- rnorm(10000)
hist(x, las = 1, main = '', col = '#810f7c', border = '#8856a7',
     freq = F, ylim = c(0, .42), xlab = 'Values')
lines(density(x), col = '#008837', lwd = 2)
## @knitr end_the_plot

################################################################################

## @knitr empty_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, cex = 1.5)
## @knitr end_empty_1

################################################################################

## @knitr empty_1_cmd
plot(x = dat$x, y = dat$y)
## @knitr end_empty_1_cmd

################################################################################

## @knitr empty_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, cex = 1.5, bty = 'n')
## @knitr end_empty_2

################################################################################

## @knitr empty_2_cmd
plot(x = dat$x, y = dat$y,
     bty = 'n')
## @knitr end_empty_2_cmd

################################################################################

## @knitr empty_3
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, cex = 1.5, bty = 'n', ann = FALSE)
## @knitr end_empty_3

################################################################################

## @knitr empty_3_cmd
plot(x = dat$x, y = dat$y,
     bty = 'n',
     ann = FALSE)
## @knitr end_empty_3_cmd

################################################################################

## @knitr empty_4
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, cex = 1.5, bty = 'n', ann = FALSE, xaxt = 'n')
## @knitr end_empty_4

################################################################################

## @knitr empty_4_cmd
plot(x = dat$x, y = dat$y,
     bty = 'n',
     ann = FALSE,
     xaxt = 'n')
## @knitr end_empty_4_cmd

################################################################################

## @knitr empty_5
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, cex = 1.5, bty = 'n', ann = FALSE, xaxt = 'n', yaxt = 'n')
## @knitr end_empty_5

################################################################################

## @knitr empty_5_cmd
plot(x = dat$x, y = dat$y,
     bty = 'n',
     ann = FALSE,
     xaxt = 'n',
     yaxt = 'n')
## @knitr end_empty_5_cmd

################################################################################

## @knitr empty_6
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, cex = 1.5, axes = FALSE, ann = FALSE)
## @knitr end_empty_6

################################################################################

## @knitr empty_6_cmd
plot(x = dat$x, y = dat$y,
     ann = FALSE,
     axes = FALSE)
## @knitr end_empty_6_cmd

################################################################################

## @knitr empty_7
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, cex = 1.5, axes = FALSE, ann = FALSE, type = 'n')
## @knitr end_empty_7

################################################################################

## @knitr empty_7_cmd
plot(x = dat$x, y = dat$y,
     ann = FALSE,
     axes = FALSE,
     type = 'n')
## @knitr end_empty_7_cmd

################################################################################

## @knitr points_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, ann = FALSE,
     bty = 'n', type = 'n')

## Adding points (default settings)
points(x = dat$x, y = dat$y)
## @knitr end_points_1

################################################################################

## @knitr points_1_cmd
## Empty plot
plot(x = dat$x, y = dat$y, ann = FALSE,
     bty = 'n', type = 'n')

## Adding points (default settings)
points(x = dat$x, y = dat$y)
## @knitr end_points_1_cmd

################################################################################

## @knitr points_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, ann = FALSE,
     bty = 'n', type = 'n')

## Adding points (user settings)
points(x = dat$x, y = dat$y,
       cex = 3, col = 'red', pch = 17)
## @knitr end_points_2

################################################################################

## @knitr points_2_cmd
## Empty plot
plot(x = dat$x, y = dat$y, ann = FALSE,
     bty = 'n', type = 'n')

## Adding points (user settings)
points(x = dat$x, y = dat$y,
       cex = 3, col = 'red', pch = 17)
## @knitr end_points_2_cmd

################################################################################

## @knitr points_3
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, ann = FALSE,
     bty = 'n', type = 'n')

## Adding points (user settings)
points(x = dat$x, y = dat$y,
       cex = 4, pch = 21,
       col = 'white', bg = 'red')
## @knitr end_points_3

################################################################################

## @knitr points_3_cmd
## Empty plot
plot(x = dat$x, y = dat$y, ann = FALSE,
     bty = 'n', type = 'n')

## Adding points (user settings)
points(x = dat$x, y = dat$y,
       cex = 4, pch = 21,
       col = 'white', bg = 'red')
## @knitr end_points_3_cmd

################################################################################

## @knitr lines_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (default settings)
abline(reg = mod)
## @knitr end_lines_1

################################################################################

## @knitr lines_1_cmd
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (default settings)
abline(reg = mod)
## @knitr end_lines_1_cmd

################################################################################

## @knitr lines_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (default settings)
abline(a = a, b = b)
## @knitr end_lines_2

################################################################################

## @knitr lines_2_cmd
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (default settings)
abline(a = a, b = b)
## @knitr end_lines_2_cmd

################################################################################

## @knitr lines_3
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, bty = 'o',
     type = 'p', pch = 19)

## Adding lines (default settings)
abline(h = 0.8)
abline(h = seq(0.9, 1.2, by = 0.1))
abline(v = seq(0.6, 1.4, by = 0.2))
## @knitr end_lines_3

################################################################################

## @knitr lines_3_cmd
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'o',
     type = 'p', pch = 19)

## Adding line (default settings)
abline(h = 0.8)
abline(h = seq(0.9, 1.2, by = 0.1))
abline(v = seq(0.6, 1.4, by = 0.2))
## @knitr end_lines_3_cmd

################################################################################

## @knitr par_cmd
## How many graphical parameters?
length(par())

## Let's get the default value of text color
par()$col

## Let's set 'red' for text color
par(col = 'red')

## Check
par()$col

## We're good!
## @knitr end_par_cmd

################################################################################

## @knitr data
load('../data/xyz.RData')

head(dat)

summary(dat$z)
## @knitr end_data

################################################################################

## @knitr regression
## Linear regression
(mod <- lm(y ~ x, data = dat))

(a <- coefficients(mod)[1])

(b <- coefficients(mod)[2])
## @knitr end_regression

################################################################################

## @knitr predict
## New data frame
mat <- data.frame(x = seq(0.6, 1.4, by = 0.05))

## Model prediction
ypred <- predict(object = mod, newdata = mat)
## @knitr end_predict

################################################################################

## @knitr lines_4_cmd
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (default settings)
lines(x = mat$x, y = ypred)

## Or, with the function points()
points(x = mat$x, y = ypred, type = 'l')
## @knitr end_lines_4_cmd

################################################################################

## @knitr lines_4
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (default settings)
lines(x = mat$x, y = ypred, col = 'black')

## Or, with the function points()
points(x = mat$x, y = ypred, type = 'l')
## @knitr end_lines_4

################################################################################

## @knitr lines_5_cmd
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (user settings)
lines(x = mat$x, y = ypred,
      col = 'red', lwd = 4, lty = 2)
## @knitr end_lines_5_cmd

################################################################################

## @knitr lines_5
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (user settings)
lines(x = mat$x, y = ypred,
      col = 'red',
      lwd = 4,
      lty = 2)
## @knitr end_lines_5

################################################################################

## @knitr predict_2
## Model prediction with se
ypred <- predict(object = mod, newdata = mat,
                 se.fit = TRUE)

class(ypred)

names(ypred)[1:2]
## @knitr end_predict_2

################################################################################

## @knitr order_pred
## Superior interval
xsup <- mat[ , 'x']
ysup <- ypred$fit + ypred$se.fit

## Inferior interval
xinf <- mat[ , 'x']
yinf <- ypred$fit - ypred$se.fit

## Reverse sort of inf.
xinf <- mat[nrow(mat) : 1, 'x']
yinf <- yinf[length(yinf) : 1]
## @knitr end_order_pred

################################################################################

## @knitr polygons_1_cmd
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding error envelope
polygons(x = c(xsup, xinf), y = c(ysup, yinf))
## @knitr end_polygons_1_cmd

################################################################################

## @knitr polygons_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding error envelope
polygon(x = c(xsup, xinf), y = c(ysup, yinf))
## @knitr end_polygons_1

################################################################################

## @knitr polygons_2_cmd
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding error envelope
polygon(x = c(xsup, xinf), y = c(ysup, yinf),
        col = 'orange', border = 'red',
        lwd = 4)
## @knitr end_polygons_2_cmd

################################################################################

## @knitr polygons_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding error envelope (user settings)
polygon(x = c(xsup, xinf), y = c(ysup, yinf),
        col = 'orange', border = 'red',
        lwd = 4)
## @knitr end_polygons_2

################################################################################

## @knitr polygons_3_cmd
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding error envelope
polygon(x = c(xsup, xinf), y = c(ysup, yinf),
        col = '#aaaaaa88', border = '#aaaaaa88')

## Adding model regression
lines(x = mat$x, y = ypred$fit, lwd = 3)
## @knitr end_polygons_3_cmd

################################################################################

## @knitr polygons_3
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding error envelope
polygon(x = c(xsup, xinf), y = c(ysup, yinf),
        col = '#aaaaaa88', border = '#aaaaaa88')

## Adding model regression
lines(x = mat$x, y = ypred$fit, lwd = 3)
## @knitr end_polygons_3

################################################################################

## @knitr rect_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

rect(xleft = 0.9, ybottom = 0.8, xright = 1.1, ytop = 1.2, density = 20, angle = 45)
## @knitr end_rect_1

################################################################################

## @knitr rect_1_cmd
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

rect(xleft = 0.9, ybottom = 0.8,
     xright = 1.1, ytop = 1.2,
     density = 20, angle = 45)
## @knitr end_rect_1_cmd

################################################################################

## @knitr rect_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

rect(xleft = 0.9, ybottom = 0.8, xright = 1.1, ytop = 1.2,
     col = 'yellow', border = 'red',
     lwd = 4, lty = 3)
## @knitr end_rect_2

################################################################################

## @knitr rect_2_cmd
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

rect(xleft = 0.9, ybottom = 0.8,
     xright = 1.1, ytop = 1.2,
     col = 'yellow', border = 'red',
     lwd = 4, lty = 3)
## @knitr end_rect_2_cmd

###############################################################################

## @knitr text_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)
## Adding title
title(main = 'Figure title')
## @knitr end_text_1

################################################################################

## @knitr text_1_cmd
## Basic plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding title
title(main = 'Figure title')
## @knitr end_text_1_cmd


## @knitr text_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)
## Adding title
title(main = 'Figure title')
## @knitr end_text_1

################################################################################

## @knitr text_2_cmd
## Basic plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding text
text(x = 0.7, y = 1.19,
     labels = 'Figure title')
## @knitr end_text_2_cmd

## @knitr text_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)
## Adding text
text(x = 0.7, y = 1.19,
     labels = 'Figure title')
## @knitr end_text_2

################################################################################

## @knitr text_3_cmd
## Basic plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'n')

## Adding text
text(x = 1, y = 1, labels = 'My text', col = 'red', 
     cex = 2, font = 2, family = 'mono')
## @knitr end_text_3_cmd

## @knitr text_3
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'n')
## Adding text
text(x = 1, y = 1, labels = 'My text',
     col = 'red', cex = 2, font = 2, family = 'mono')
## @knitr end_text_3

################################################################################

## @knitr text_4_cmd
## Basic plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'n')

## Adding text
text(x = 0.6, y = 0.85, labels = 'pos = 4 (right)',
     cex = 2, font = 1, pos = 4)
text(x = 1, y = 1, labels = 'Rotated text',
     cex = 2, font = 2, srt = 45)
## @knitr end_text_4_cmd

## @knitr text_4
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'n')
## Adding text
text(x = 0.6, y = 0.85, labels = 'pos = 4 (right)',
     cex = 2, font = 1, pos = 4)
text(x = 1, y = 1, labels = 'Rotated text',
     cex = 2, font = 2, srt = 45)
## @knitr end_text_4

################################################################################

## @knitr text_5_cmd
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n', type = 'n')

## Adding text
text(x = dat$x, y = dat$y, labels = dat$z)
## @knitr end_text_5_cmd

## @knitr text_5
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'n', pch = 19)
## Adding text
text(x = dat$x, y = dat$y,
     labels = dat$z)
## @knitr end_text_5

################################################################################

## @knitr text_6_cmd
## Basic plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19, ylab = '')

## Adding text
mtext(text = 'y-axis', side = 2, line = 2,
      at = 1.15, font = 2, cex = 2)
## @knitr end_text_6_cmd

## @knitr text_6
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19, ylab = '')
## Adding text
mtext(text = 'y-axis', side = 2, line = 2,
      at = 1.15, font = 2, cex = 2)
## @knitr end_text_6

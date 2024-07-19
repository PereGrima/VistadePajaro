library(plotrix)
library(png)

png(file="circulos.png",width=1300, height=600, res = 300)

x <- 101
y <- 101
par(mar=c(0, 0, 0, 0))

a = c(13, 3)
b1 = c(2, 9, 20)
b2 = c(6, 12, 19)
ymax = 20
xmax = 27
t=0.9

plot(x, y, asp=1, ylim=c(0, ymax), xlim=c(0, xmax), ylab="", xlab="", col = "black", yaxt = 'n', xaxt='n', frame.plot = FALSE)
draw.circle(b1[1], a[1], 1, nv = 1000, border = NA, col = "grey", lty = 1, lwd = 1)
draw.circle(b1[2], a[1], 3, nv = 1000, border = NA, col = "grey", lty = 1, lwd = 1)
draw.circle(b1[3], a[1], 5, nv = 1000, border = NA, col = "grey", lty = 1, lwd = 1)

draw.circle(b2[1], a[2], sqrt(1), nv = 1000, border = NA, col = "grey", lty = 1, lwd = 1)
draw.circle(b2[2], a[2], sqrt(3), nv = 1000, border = NA, col = "grey", lty = 1, lwd = 1)
draw.circle(b2[3], a[2], sqrt(5), nv = 1000, border = NA, col = "grey", lty = 1, lwd = 1)

text(b1[1], a[1], "1", cex=t)
text(b1[2], a[1], "3", cex=t)
text(b1[3], a[1], "5", cex=t)

text(b2[1], a[2], "1", cex=t)
text(b2[2], a[2], "3", cex=t)
text(b2[3], a[2], "5", cex=t)

# abline(h=ymax-0.01)
# abline(h=0.01)
# abline(v=xmax-0.01)
# abline(v=0.01)
dev.off()
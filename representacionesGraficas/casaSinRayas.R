
png(file="casaSinRayas.png",width=1300, height=600, res = 300)
x <- 20
y <- 20
par(mar=c(0, 0, 0, 0))
plot(x, y, asp=1, ylim=c(-10, 3), xlim=c(-10, 10), ylab="", xlab="", col = "black", yaxt = 'n', xaxt='n', frame.plot = FALSE)


x = c(-9, -7, -5)
y = c(-7.5, -6, -7.5)
polygon(x,y, col = "grey", border = NA)

rect(-8.5, -10, -7.5, -7.5, col = "grey", border = NA)
rect(-5.5, -10, -6.5, -7.5, col = "grey", border = NA)
rect(-8.5, -8.867, -5.5, -7.5, col = "grey", border = NA)
rect(-6, -7.5, -5.5, -6.3, col = "grey", border = NA)

x = c(-3, 3, 9)
y = c(-2.5, 2, -2.5)
polygon(x,y, col = "grey", border = NA)

rect(-1.5, -10, 1.5, -2.5, col = "grey", border = NA)
rect(7.5, -10, 4.5, -2.5, col = "grey", border = NA)
rect(-1.5, -6.6, 7.5, -2.5, col = "grey", border = NA)
rect(6, -2.5, 7.5, 1.1, col = "grey", border = NA)

dev.off()
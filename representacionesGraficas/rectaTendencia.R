
AzulS = "#B9C9F5"
t=0.65

set.seed(805)
x = c(runif(50, 0.5, 9.5), 25, 40, 45)
y = c(runif(50, 0.5, 9.5), 16, 18, 17)

png("rectaTendencia.png", width=1255.5, height=604.5, res = 300)
par(mar=c(1.7, 1.7, 1, 0.5) + 0.1, mgp = c(0,0.4,0), mfrow=c(1,2))

plot(x, y, pch = 16, col = "dodgerblue3", cex = 0.65,
		 ylab = "", xlab = "", ylim = c(0, 20), xlim = c(0, 50),
		 xaxt='n', yaxt='n',  xaxs="i", yaxs="i", main = "")

abline(lm(y~x), col = "red")

axis(1, seq(0, 50, by=5), tck=-0.02, cex.axis=t, padj = -1.3, xpd = NA)
axis(2, seq(0, 20, by=2), tck=-0.02, hadj = 0.85, las=1, cex.axis=t)
mtext(side = 1, text = "X", line = 0.5, cex=t+0.05)
mtext(side = 2, text = "Y", line = 1.2, cex=t+0.05, las=1)

plot(x, y, pch = 16, col = "dodgerblue3", cex = 0.65,
     ylab = "", xlab = "", ylim = c(0, 10), xlim = c(0, 10),
     xaxt='n', yaxt='n',  xaxs="i", yaxs="i", main = "")
axis(1, seq(0.8, 4.2, by=0.4), tck=-0.02, cex.axis=t, padj = -1.3, xpd = NA)
axis(2, seq(0, 20, by=2), tck=-0.02, hadj = 0.85, las=1, cex.axis=t)
mtext(side = 1, text = "X", line = 0.5, cex=t+0.05)
mtext(side = 2, text = "Y", line = 1.2, cex=t+0.05, las=1)

dev.off()

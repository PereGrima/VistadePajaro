library(png)

y1 = c(28.34, 28.01, 28.20, 28.75, 29.00, 28.63, 
      28.85, 28.82, 29.34, 29.00, 29.40, 29.50)
y = 100*y1/28.34-100
x = seq(1, 12, 1)

png("escalaLineas2.png", width=1350, height=650, res = 300)
par(mar=c(1, 1.3, 0.2, 5) + 0.1, mgp = c(0,0,0))
t=0.6

plot(x, y, type = "l", xlab="", ylab="", 
     ylim=c(-3, 6), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i",
     lwd=2, col = "blue"
)
grid()
axis(1, at=x, tck=-0.02, cex.axis=t-0.08, padj = -0.6)
mtext("Mes", side=1, line=0.3, cex=t)

axis(2, at=seq(-3, -1, 1), las=1, tck=-0.015, hadj = 1.8, cex.axis=t-0.05)
axis(2, at=seq(0, 6, 1), las=1, tck=-0.015, hadj = 2.2, cex.axis=t-0.05)
mtext("Porcentaje de variación", side=2, line=0.85, cex=t)

segments(1, 4.093, 12.5, 4.093, lty = 2, xpd=NA)
segments(1, -1.16443, 12.5, -1.16443, lty = 2, xpd=NA)

arrows(12.3, 4.093, 12.3, -1.16443, length = 0.1, angle = 20, code = 3, xpd=NA)

text(14, 2.3, "Aproximadamente", xpd=NA, cex=t)
text(13.8, 1.6, "2/3 del espacio", xpd=NA, cex=t)
text(13.2, 1, "vertical", xpd=NA, cex=t)

dev.off()

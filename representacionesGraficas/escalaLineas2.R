library(png)

y1 = c(28.34, 28.01, 28.20, 28.75, 29.00, 28.63, 
      28.85, 28.82, 29.34, 29.00, 29.40, 29.50)
y = 100*y1/28.34-100
x = seq(1, 12, 1)

png("escalaLineas2.png", width=1000, height=650, res = 300)
par(mar=c(1, 1.3, 0.2, 0) + 0.1, mgp = c(0,0,0))
t=0.6

plot(x, y, type = "l", xlab="", ylab="", 
     ylim=c(-3, 6), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i",
     lwd=2, col = "blue"
)
grid()
axis(1, at=x,  
     tck=-0.02, cex.axis=t-0.08, padj = -0)
axis(2, at=seq(-3, 6, 1), las=1, tck=-0.015, hadj = 1.3, cex.axis=t-0.08)

dev.off()

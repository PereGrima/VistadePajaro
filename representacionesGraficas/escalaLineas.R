library(png)

y = c(28.34, 28.01, 28.20, 28.75, 29.00, 28.63, 
      28.85, 28.82, 29.34, 29.00, 29.40, 29.50)
x = seq(1, 12, 1)

png("escalaLineas.png", width=1350, height=650, res = 300)
par(mar=c(1, 1.3, 0.2, 0) + 0.1, mgp = c(0,0,0), mfrow=c(1,2))
t=0.6

plot(x, y, type = "l", xlab="", ylab="", 
     ylim=c(28, 29.5), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i",
     lwd=2, col = "blue"
)
grid()
axis(1, at=x,  
     tck=-0.02, cex.axis=t-0.08, padj = -0)
axis(2, at=seq(28, 29.5, 0.5), las=1, tck=-0.015, hadj = 1.3, cex.axis=t-0.08)

par(mar=c(1, 1.3, 0.2, 0.1) + 0.1, mgp = c(0,0,0))
plot(x, y, type = "l", xlab="", ylab="", 
     ylim=c(0, 50), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i",
     lwd=2, col = "blue"
)
grid()
axis(1, at=x,  
     tck=-0.02, cex.axis=t-0.08, padj = -0)
axis(2, at=seq(10, 50, 10), las=1, tck=-0.015, hadj = 1.5, cex.axis=t-0.08)
axis(2, at=0, las=1, tck=-0.015, hadj = 2, cex.axis=t-0.05)



dev.off()

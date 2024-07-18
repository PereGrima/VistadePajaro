
datos <- read.csv2("paro.csv")

png("paro.png", width=1350, height=650, res = 300)
par(mar=c(1, 1.3, 0.2, 0.1) + 0.1, mgp = c(0,0,0), mfrow=c(1,2))
t=0.6

plot(seq(1, 24, 1), datos$ParoMM, type = "l", xlab="", ylab="", 
     ylim=c(2.5, 3.2), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i", yaxs="i",
     lwd=2, col = "darkgreen"
)
# grid(nx=9, ny=10)
# 
# axis(1, at=seq(1, 10, 1), tck=-0.02, cex.axis=t-0.08, padj = -0.3)
# axis(2, at=seq(100, 200, 20), las=1, tck=-0.015, hadj = 1.4, cex.axis=t-0.08)

plot(seq(1, 12, 1), datos$ParoMM[datos$Anio==2022], type = "l", xlab="", ylab="", 
     ylim=c(2.5, 3.2), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i", yaxs="i",
     lwd=2, col = "darkgreen"
)
#lines(seq(1, 12, 1), datos$ParoMM[datos$Anio==2022], type = "l")
lines(seq(1, 12, 1), datos$ParoMM[datos$Anio==2023], type = "l")
# grid(nx=9, ny=10)
# 
# axis(1, at=seq(1, 10, 1), tck=-0.02, cex.axis=t-0.08, padj = -0.3)
# axis(2, at=seq(0, 250, 50), las=1, tck=-0.015, hadj = 1.4, cex.axis=t-0.08)

dev.off()
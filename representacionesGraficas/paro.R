
datos <- read.csv2("paro.csv")

png("paro.png", width=1350, height=650, res = 300)
par(mar=c(1.3, 1.5, 0.2, 0.1) + 0.1, mgp = c(0,0,0), mfrow=c(1,2))
t=0.6

y = cbind(datos$ParoMM[datos$Anio==2022], rep(NA,12))
plot(seq(1, 24, 1), y, type = "l", xlab="", ylab="", 
     ylim=c(2.5, 3.2), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i", yaxs="i",
     lwd=2, col = "orange", 
)
lines(seq(13, 24, 1), datos$ParoMM[datos$Anio==2023], type = "l", lwd = 2, col = "blue")
lines(c(12, 12.5), c(2.84, 2.875), type = "l", lwd=2, col = "orange")
lines(c(12.5, 13), c(2.875, 2.91), type = "l", lwd=2, col = "blue")
grid(ny=7, nx=0)
# 
axis(1, at=seq(3, 24, 3), label = c(3, 6, 9, 12, 3, 6, 9, 12), tck=-0.02, cex.axis=t-0.08, padj = -0.3)
axis(1, at=seq(1, 24, 1), label = rep("", 24), tck=-0.01, cex.axis=t-0.08, padj = -0.3)
axis(2, at=seq(2.5, 3.2, 0.1), las=1, tck=-0.015, hadj = 1.4, cex.axis=t-0.08)

lines(c(12.5, 12.5), c(2.55, 3.15), lty = 2)

text(8.5, 3.05, "2022", col = "orange", cex = t+0.1)
text(16.5, 3.05, "2023", col = "blue", cex = t+0.1)

mtext("Núm de parados (millones)", side = 2, cex = t, line=1)
mtext("Mes", side = 1, cex = t, line=0.5)


plot(seq(1, 12, 1), datos$ParoMM[datos$Anio==2022], type = "l", xlab="", ylab="", 
     ylim=c(2.5, 3.2), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i", yaxs="i",
     lwd=2, col = "orange"
)
lines(seq(1, 12, 1), datos$ParoMM[datos$Anio==2023], type = "l", col ="blue", lwd = 2)

grid(ny=7, nx=0)

axis(1, at=seq(1, 12, 1), tck=-0.02, cex.axis=t-0.08, padj = -0.3)
axis(2, at=seq(2.5, 3.2, 0.1), las=1, tck=-0.015, hadj = 1.4, cex.axis=t-0.08)

text(7.5, 2.96, "2022", col = "orange", cex = t+0.1)
text(7.5, 2.75, "2023", col = "blue", cex = t+0.1)

mtext("Mes", side = 1, cex = t, line=0.5)
dev.off()
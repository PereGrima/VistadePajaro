
datos <- read.csv2("inflacion15.csv")

png("salariosInflacion.png", width=1350, height=650, res = 300)
par(mar=c(1, 1.3, 0.2, 0.1) + 0.1, mgp = c(0,0,0), mfrow=c(1,2))
t=0.6

x = c(2023, 2024)
y1 = c(5, 10)
y2 = c(0, 100)

plot(datos$Anio, datos$Salarios, type = "l", xlab="", ylab="", 
     ylim=c(100, 200), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i", yaxs="i",
     lwd=2, col = "darkgreen"
)
grid(nx=9, ny=10)

axis(1, at=seq(1, 10, 1), tck=-0.02, cex.axis=t-0.08, padj = -0.3)
axis(2, at=seq(100, 200, 20), las=1, tck=-0.015, hadj = 1.4, cex.axis=t-0.08)

plot(datos$Anio, datos$Salarios, type = "l", xlab="", ylab="", 
     ylim=c(0, 400), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i", yaxs="i",
     lwd=2, col = "darkgreen"
)
lines(datos$Anio, datos$Precios, type = "l", col = "red", lwd=2)
grid(nx=9, ny=8)

axis(1, at=seq(1, 10, 1), tck=-0.02, cex.axis=t-0.08, padj = -0.3)
axis(2, at=0, las=1, tck=-0.015, hadj = 1.9, cex.axis=t-0.08)
axis(2, at=50, las=1, tck=-0.015, hadj = 1.6, cex.axis=t-0.08)
axis(2, at=seq(100, 400, 50), las=1, tck=-0.015, hadj = 1.4, cex.axis=t-0.08)

text(7, 165, "Salarios", col = "darkgreen", cex=t)
text(5.5, 255, "Coste de la vida", col = "red", cex=t)

dev.off()

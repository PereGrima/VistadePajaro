
datos <- read.csv2("inflacion15.csv")

png("poderAdquisitivo.png", width=700, height=650, res = 300)
par(mar=c(1, 1.3, 0.2, 0.2) + 0.1, mgp = c(0,0,0))
t=0.6

plot(datos$Anio, datos$Salarios, type = "l", xlab="", ylab="", 
     ylim=c(0, 225), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i", yaxs="i",
     lwd=2, col = "darkgreen"
)
lines(datos$Anio, datos$PoderAdqui, type = "l", col = "red", lwd=2)
grid(nx=9, ny=9)

axis(1, at=seq(1, 10, 1), tck=-0.02, cex.axis=t-0.08, padj = -0.3)
axis(2, at=0, las=1, tck=-0.015, hadj = 1.9, cex.axis=t-0.08)
axis(2, at=50, las=1, tck=-0.015, hadj = 1.6, cex.axis=t-0.08)
axis(2, at=seq(100, 225, 50), las=1, tck=-0.015, hadj = 1.4, cex.axis=t-0.08)

text(6, 150, "Salarios", col = "darkgreen", cex=t)
text(8, 75, "Poder adquisitivo", col = "red", cex=t)

dev.off()


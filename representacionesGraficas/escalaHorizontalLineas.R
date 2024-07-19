library(png)

y = c(56, 67, 73, 82, 84, 84.5, 86)
x = seq(1, 7, 1)

png("escalaHorizontalLineas.png", width=1350, height=700, res = 300)
par(mar=c(1.5, 4, 1, 4) + 0.1, mgp = c(0,0,0))
t=0.6

plot(x, y, type = "b", xlab="", ylab="", 
     ylim=c(50, 100), xpd = FALSE,  yaxt='n',  xaxt='n', 
     lwd=2, col = "blue", cex = t+0.1
)
grid()
anio = c("1990", "2000", "2010", "2020", "2021", "2022", "2023")
axis(1, at=x, label = anio, tck=-0.02, cex.axis=t-0.05, padj = -0.3)
axis(2, at=seq(50, 90, 10), las=1, tck=-0.015, hadj = 1.5, cex.axis=t-0.05)
axis(2, at=100, las=1, tck=-0.015, hadj = 1.3, cex.axis=t-0.05)

mtext("Miles", side=2, line=1, cex=t)
mtext("Evolución del número de habitantes", side=3, line=0.2, cex=t)
mtext("Año", side=1, line=0.5, cex=t)

dev.off()

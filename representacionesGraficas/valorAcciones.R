
png("valorAcciones.png", width=1350, height=650, res = 300)
par(mar=c(1, 2, 1, 1) + 0.1, mgp = c(0,0,0), mfrow=c(1,2))
t=0.6

x = c(2023, 2024)
y1 = c(5, 10)
y2 = c(0, 100)

plot(x, y1, type = "l", xlab="", ylab="", 
     xlim = c(2022.75, 2024.25), 
     ylim=c(0, 62), xpd = FALSE,  yaxt='n',  xaxt='n', xaxs="i",
     lwd=2, col = "darkgreen"
)
segments(2023, 50, 2024, 55, col ="red", lwd=2)
segments(2023, 0, 2023, 62, col = "lightgray", lty = "dotted")
segments(2024, 0, 2024, 62, col = "lightgray", lty = "dotted")

for (i in seq(0, 60, 10)) {
  segments(2022.75, i, 2024.25, i, col = "lightgray", lty = "dotted")
}

axis(1, at=x, tck=-0.02, cex.axis=t-0.08, padj = -0)
axis(2, at=seq(10, 60, 10), las=1, tck=-0.015, hadj = 1.5, cex.axis=t-0.08)
axis(2, at=0, las=1, tck=-0.015, hadj = 1.8, cex.axis=t-0.08)

mtext("Valor de las acciones", side=3, cex = t, line = 0.2)


par(mar=c(1, 1, 1, 2) + 0.1, mgp = c(0,0,0))
plot(x, y2, type = "l", xlab="", ylab="", 
     xlim = c(2022.75, 2024.25),
     ylim=c(0, 104), xpd = NA,  yaxt='n',  xaxt='n', xaxs="i",
     lwd=2, col = "darkgreen"
)
segments(2023, 0, 2024, 10, col ="red", lwd=2)
segments(2023, 0, 2023, 104, col = "lightgray", lty = "dotted")
segments(2024, 0, 2024, 104, col = "lightgray", lty = "dotted")

for (i in seq(0, 100, 20)) {
  segments(2022.75, i, 2024.25, i, col = "lightgray", lty = "dotted")
}

axis(1, at=x, tck=-0.02, cex.axis=t-0.08, padj = -0)
axis(2, at=100, las=1, tck=-0.015, hadj = 1.3, cex.axis=t-0.05)
axis(2, at=seq(20, 80, 20), las=1, tck=-0.015, hadj = 1.5, cex.axis=t-0.08)
axis(2, at=0, las=1, tck=-0.015, hadj = 2, cex.axis=t-0.05)

mtext("Porcentaje de cambio", side=3, cex = t, line = 0.2)

dev.off()

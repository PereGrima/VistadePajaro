datosGapminder <- read.csv2("datosGapminder.csv")

Spain= subset(datosGapminder, Pais=="Spain")
Colombia = subset(datosGapminder, Pais=="Colombia")
Japan = subset(datosGapminder, Pais=="Japan")
Nigeria = subset(datosGapminder, Pais=="Nigeria")
Australia = subset(datosGapminder, Pais=="Australia")
t = 0.6
l = 1.3
png("evoEspVida.png", width=1250, height=500, res = 300)
par(mar = c(1, 2, 0.2, 4), xpd = TRUE)
plot(Spain$anio, Spain$EspVida, type="l", cex=t, 
     ylab = "", xlab = "", ylim = c(10, 90), xlim=c(1900,2020),
     xaxt='n', yaxt='n',  xaxs="i", yaxs="i",main = "", col = "red", lwd = l)
axis(1, at=seq(1900, 2020, 10), tck=-0.02, las=1, cex.axis=t-0.08, padj = -3.2)
axis(2, seq(10, 90, by=10), tck=-0.02, las=1, cex.axis=t-0.07, hadj = -0.4, xpd = NA)
mtext(side = 2, text = "Renta per cápita (miles de dólares)", line = 1, cex=t-0.08)

lines(Colombia$anio, Colombia$EspVida, type="l", col = "blue", lwd = l)
lines(Japan$anio, Japan$EspVida, type="l", col = "green", lwd = l)
lines(Nigeria$anio, Nigeria$EspVida, type="l", col = "brown", lwd = l)
lines(Australia$anio, Australia$EspVida, type="l", col = "orange", lwd = l)

legend("topright", inset=c(-0.25 ,0), title="País", 
       cex=t-0.1, legend=c("España", "Colombia", "Japón", "Nigeria", "Australia"),
       lty= rep(1,5), col=c("red", "blue", "green", "brown", "orange"), lwd=1.3)
# legend(1, 95, legend=c("Line 1", "Line 2"),
#        col=c("red", "blue"), lty=1:2, cex=0.8,
#        title="Line types", text.font=4, bg='lightblue')

dev.off()

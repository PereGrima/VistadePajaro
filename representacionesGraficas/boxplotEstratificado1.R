datosGapminder <- read.csv2("datosGapminder.csv")
x = subset(datosGapminder, anio==2019)
t = 0.6

png("boxplotEstratificado1.png", width=1250, height=650, res = 300)

par(mar = c(1, 2, 0.2, 0), fig=c(0, 0.54, 0, 1))
boxplot(EspVida~ Cont, x,
        col = "white", medcol="white", staplecol="white",
        boxcol = "white", whiskcol = "white",
        outline = F, cex=t, ylab = "", xlab = "", ylim = c(40, 90), 
        xaxt='n', yaxt='n',  xaxs="i", yaxs="i",main = "")
        
stripchart(EspVida ~ Cont,
           data = x,
           method = "jitter",
           pch = 19,
           col = 2:4,
           vertical = TRUE,
           add = TRUE, cex=t-0.05)
axis(1, at=1:5, labels = c("África", "América", "Asia", "Euro", "Oceanía"), tck=-0.02, las=1, cex.axis=t-0.08, padj = -3.2)
axis(2, seq(40, 90, by=10), tck=-0.02, las=1, cex.axis=t-0.08, hadj = -0.6, xpd = NA)
mtext(side = 2, text = "Esperanza de vida (años)", line = 1, cex=t-0.08)

par(mar = c(1, 0.2, 0.2, 0), fig=c(0.54, 1, 0, 1), new = TRUE)
boxplot(EspVida ~ Cont, x,
        medlwd=1, whisklty = 1, cex=t, ylab = "", xlab = "", ylim = c(40, 90),
        xaxt='n', yaxt='n',  xaxs="i",  yaxs="i", main = "")
axis(1, at=1:5, labels = c("África", "América", "Asia", "Euro", "Oceanía"), tck=-0.02, las=1, cex.axis=t-0.08, padj = -3.2)
#axis(2, seq(30, 90, by=10), tck=-0.02, las=1, cex.axis=t-0.05, hadj = 1.5, xpd = NA)
#mtext(side = 2, text = "Esperanza de vida", line = 1, cex=t)

dev.off()


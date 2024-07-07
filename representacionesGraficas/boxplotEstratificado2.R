datosGapminder <- read.csv2("datosGapminder.csv")
x = subset(datosGapminder, anio==2019)
t = 0.6

png("boxplotEstratificado2.png", width=1250, height=650, res = 300)
x$RentaPC = x$RentaPC/1000
par(mar = c(1, 2, 0.2, 0), fig=c(0, 0.54, 0, 1))
boxplot(RentaPC ~ Cont, x,
        col = "white", medcol="white", staplecol="white",
        boxcol = "white", whiskcol = "white",
        outline = F, cex=t, ylab = "", xlab = "", ylim = c(0, 120), 
        xaxt='n', yaxt='n',  xaxs="i", main = "")
        
stripchart(RentaPC ~ Cont,
           data = x,
           method = "jitter",
           pch = 19,
           col = 2:4,
           vertical = TRUE,
           add = TRUE, cex=t,  xaxt='n', yaxt='n',  xaxs="i")
axis(1, at=1:5, labels = c("África", "América", "Asia", "Euro", "Oceanía"), tck=-0.02, las=1, cex.axis=t-0.08, padj = -3.2)
axis(2, at=0, tck=-0.02, las=1, cex.axis=t-0.07, hadj = -2, xpd = NA)
axis(2, seq(10, 90, by=10), tck=-0.02, las=1, cex.axis=t-0.07, hadj = -0.4, xpd = NA)
axis(2, seq(100, 120, by=10), tck=-0.02, las=1, cex.axis=t-0.08, hadj = 0.05, xpd = NA)
mtext(side = 2, text = "Renta per cápita (miles de dólares)", line = 1, cex=t-0.08)

par(mar = c(1, 0.2, 0.2, 0), fig=c(0.54, 1, 0, 1), new = TRUE)
boxplot(RentaPC ~ Cont, x,
        medlwd=1, whisklty = 1, cex=t, ylab = "", xlab = "", ylim = c(0, 120),
        xaxt='n', yaxt='n',  xaxs="i",  main = "")
axis(1, at=1:5, labels = c("África", "América", "Asia", "Euro", "Oceanía"), tck=-0.02, las=1, cex.axis=t-0.08, padj = -3.2)

dev.off()


datosGapminder <- read.csv2("datosGapminder.csv")
x = subset(datosGapminder, anio==2019 & Poblacion > 100000)
t = 0.7

png("espeVida_RentaPC_mortInf.png", width=1500, height=1100, res = 300)
x$RentaPC = x$RentaPC/1000
k = dim(x)[1]
contCodi = rep(NA, k)
af =0.5
colAfrica = adjustcolor( "yellow", alpha.f = af)
colAmerica = adjustcolor( "blue", alpha.f = af)
colAsia = adjustcolor( "red", alpha.f = af)
colEuropa = adjustcolor( "green", alpha.f = af)
colOceania = adjustcolor( "orange", alpha.f = af)

for (i in 1:k) {
  if (x$Cont[i] == "Africa") {contCodi[i] = colAfrica}
  if (x$Cont[i] == "America") {contCodi[i] = colAmerica}
  if (x$Cont[i] == "Asia") {contCodi[i] = colAsia}
  if (x$Cont[i] == "Europa") {contCodi[i] = colEuropa}
  if (x$Cont[i] == "Oceania") {contCodi[i] = colOceania}
}
  
par(mar = c(2, 2, 0, 5), xpd=TRUE)
radio <- sqrt( x$mortalInf/pi)
symbols(x$RentaPC, x$EspVida, circles=radio, inches=0.15, bg=contCodi,
        ylab = "", xlab = "", ylim = c(50, 85), xlim = c(-7, 125),
        xaxt='n', yaxt='n',  xaxs="i")
axis(1, seq(0, 120, by=10), tck=-0.02, las=1, cex.axis=t-0.07, padj = -0.4, xpd = NA)
axis(2, seq(50, 85, by=5), tck=-0.02, las=1, cex.axis=t-0.07, hadj = -0.4, xpd = NA)
mtext(side = 1, text = "Renta per cápita (miles de dólares)", line = 1, cex=t-0.08)
mtext(side = 2, text = "Esperanza de vida (años)", line = 1, cex=t-0.08)

text = c("África", "América", "Asia", "Europa", "Australia")
legend("topright", inset=c(-0.24 ,0), title="   Continente",
       cex=t-0.08, legend=text,
       text.width = strwidth(text)[1]*1.2,
       pch=21, pt.cex=1.7, col= "black", pt.bg=c("yellow", colAmerica, colAsia, colEuropa, colOceania),
       y.intersp=1.4, x.intersp=1.5)
       #symbols(130, 80, 0.5, 0.5, bg=c("yellow", "blue", colAsia, colEuropa, colOceania)))


# boxplot(RentaPC ~ Cont, x,
#         col = "white", medcol="white", staplecol="white",
#         boxcol = "white", whiskcol = "white",
#         outline = F, cex=t, ylab = "", xlab = "", ylim = c(0, 120), 
#         xaxt='n', yaxt='n',  xaxs="i", main = "")
#         
# stripchart(RentaPC ~ Cont,
#            data = x,
#            method = "jitter",
#            pch = 19,
#            col = 2:4,
#            vertical = TRUE,
#            add = TRUE, cex=t,  xaxt='n', yaxt='n',  xaxs="i")
# axis(1, at=1:5, labels = c("África", "América", "Asia", "Euro", "Oceanía"), tck=-0.02, las=1, cex.axis=t-0.08, padj = -3.2)
# axis(2, at=0, tck=-0.02, las=1, cex.axis=t-0.07, hadj = -2, xpd = NA)
# axis(2, seq(10, 90, by=10), tck=-0.02, las=1, cex.axis=t-0.07, hadj = -0.4, xpd = NA)
# axis(2, seq(100, 120, by=10), tck=-0.02, las=1, cex.axis=t-0.08, hadj = 0.05, xpd = NA)
# mtext(side = 2, text = "Renta per cápita (miles de dólares)", line = 1, cex=t-0.08)
# 
# par(mar = c(1, 0.2, 0.2, 0), fig=c(0.54, 1, 0, 1), new = TRUE)
# boxplot(RentaPC ~ Cont, x,
#         medlwd=1, whisklty = 1, cex=t, ylab = "", xlab = "", ylim = c(0, 120),
#         xaxt='n', yaxt='n',  xaxs="i",  main = "")
# axis(1, at=1:5, labels = c("África", "América", "Asia", "Euro", "Oceanía"), tck=-0.02, las=1, cex.axis=t-0.08, padj = -3.2)

dev.off()


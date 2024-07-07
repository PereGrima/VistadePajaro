
datosGapminder <- read.csv2("datosGapminder.csv")
x = subset(datosGapminder, anio==2019)
t = 0.7

#png("espeVida_RentaPC.png", width=1500, height=1100, res = 300)
x$RentaPC = x$RentaPC/1000
k = dim(x)[1]

contCodi2 = rep(NA, k)

for (i in 1:k) {
  if (x$Cont[i] == "Africa") {
    contCodi[i] = colAfrica
    contCodi2[i] = "yellow" }
  if (x$Cont[i] == "America") {
    contCodi[i] = "blue" 
    contCodi2[i] = colAmerica}
  if (x$Cont[i] == "Asia") {
    contCodi[i] = colAsia 
    contCodi2[i] = "red" }
  if (x$Cont[i] == "Europa") {
    contCodi[i] = colEuropa
    contCodi2[i] = "green"}
  if (x$Cont[i] == "Oceania") {
    contCodi[i] = colOceania
    contCodi2[i] = "orange"}
}
  
par(mar = c(2, 2, 0, 5), xpd=TRUE)

plot(x$mortalInf, x$EspVida, pch=21, col = "black", bg = contCodi2,
        ylab = "", xlab = "", ylim = c(50, 85), xlim = c(-7, 125),
        xaxt='n', yaxt='n',  xaxs="i", cex=t+0.1)
axis(1, seq(0, 120, by=10), tck=-0.02, las=1, cex.axis=t-0.07, padj = -0.4, xpd = NA)
axis(2, seq(50, 85, by=5), tck=-0.02, las=1, cex.axis=t-0.07, hadj = -0.4, xpd = NA)
mtext(side = 1, text = "Renta per cápita (miles de dólares)", line = 1, cex=t-0.08)
mtext(side = 2, text = "Esperanza de vida (años)", line = 1, cex=t-0.08)

text = c("África", "América", "Asia", "Europa", "Australia")
legend("topright", inset=c(-0.24 ,0), title="   Continente",
       cex=t-0.08, legend=text,
       text.width = strwidth(text)[1]*1.2,
       pch=21, pt.cex=1, col= "black", pt.bg=c("yellow", colAmerica, colAsia, colEuropa, colOceania),
       y.intersp=1.3, x.intersp=1.2)
       #symbols(130, 80, 0.5, 0.5, bg=c("yellow", "blue", colAsia, colEuropa, colOceania)))

#dev.off()


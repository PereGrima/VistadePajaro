library(qcc)

poblacion = c(1422, 1383, 270, 223, 166, 126, 110, 96, 87, 71, 53, 52, 42)
names(poblacion) = c("China", "India", "Indonesia", "Pakistan", "Bangladesh", "Japon", "Filipinas", "Vietnam", "Iran", "Tailandia", "Myanmar", "Corea del Sur", "Irak")


pareto.chart(poblacion, xlab = "Categories", # x-axis label
             ylab="Frequency", # label y left
             
             # colors of the chart            
             col=heat.colors(length(poblacion)),
             
             # ranges of the percentages at the right
             cumperc = seq(0, 100, by = 20),
             
             # label y right
             ylab2 = "Cumulative Percentage",
             
             # title of the chart
             main = "Complaints of different customers"
)


# 
# 
# datosGapminder <- read.csv2("datosGapminder.csv")
# x = subset(datosGapminder, anio==2019)
# 
# #png("paretoAsia.png", width=1282.5, height=674.5, res = 300)
# x$Poblacion = x$Poblacion/1000000
# Poblacion = sort(x$Poblacion, decreasing = TRUE)
# poblaAcu = rep(NA, dim(x)[1])
# for (i in 1:dim(x)[1]) {
#   poblaAcu[i] = sum(Poblacion[1:i])
# }
# 
# plot(poblaAcu, ylim=c(0,8000))
# 



# par(mar=c(1.7, 1.7, 1, 0.5) + 0.1, mgp = c(0,0.4,0), mfrow=c(1,2), xpd = TRUE)
# barplot(Values_1,
#         ylab = "", xlab = "", ylim = c(0, 60),
#         xaxs="i", yaxs="i", xaxt='n', yaxt='n',
#         space=c(0, 0.4, 0.4, 0.4, 0.4))
# axis(1, seq(0.5, 6.1, by=1.4), labels = Zona, tck=-0.02, cex.axis=t-0.05, padj = -1.15, xpd = NA)
# axis(2, seq(0, 60, by=10), tck=-0.02, hadj = 0.85, las=1, cex.axis=t)
# 
# mtext(side = 2, text = "Ventas (M€)", line = 1, cex=t+0.1)
# 
# 
# q1 = quantile(x$RentaPC, 0.25, na.rm = TRUE)
# q2 = quantile(x$RentaPC, 0.5, na.rm = TRUE)
# q3 = quantile(x$RentaPC, 0.75, na.rm = TRUE)
# 
# nq1Africa = sum(x$Cont == "Africa" & x$RentaPC < q1)
# nq2Africa = sum(x$Cont == "Africa" & x$RentaPC > q1 & x$RentaPC < q2)
# nq3Africa = sum(x$Cont == "Africa" & x$RentaPC > q2 & x$RentaPC < q3)
# nq4Africa = sum(x$Cont == "Africa" & x$RentaPC > q3)
# 
# nq1America = sum(x$Cont == "America" & x$RentaPC < q1)
# nq2America = sum(x$Cont == "America" & x$RentaPC > q1 & x$RentaPC < q2)
# nq3America = sum(x$Cont == "America" & x$RentaPC > q2 & x$RentaPC < q3)
# nq4America = sum(x$Cont == "America" & x$RentaPC > q3)
# 
# nq1Asia = sum(x$Cont == "Asia" & x$RentaPC < q1)
# nq2Asia = sum(x$Cont == "Asia" & x$RentaPC > q1 & x$RentaPC < q2)
# nq3Asia = sum(x$Cont == "Asia" & x$RentaPC > q2 & x$RentaPC < q3)
# nq4Asia = sum(x$Cont == "Asia" & x$RentaPC > q3)
# 
# nq1Europa = sum(x$Cont == "Europa" & x$RentaPC < q1, na.rm = TRUE)
# nq2Europa = sum(x$Cont == "Europa" & x$RentaPC > q1 & x$RentaPC < q2, na.rm = TRUE)
# nq3Europa = sum(x$Cont == "Europa" & x$RentaPC > q2 & x$RentaPC < q3, na.rm = TRUE)
# nq4Europa = sum(x$Cont == "Europa" & x$RentaPC > q3, na.rm = TRUE)
# 
# nq1Oceania = sum(x$Cont == "Oceania" & x$RentaPC < q1)
# nq2Oceania = sum(x$Cont == "Oceania" & x$RentaPC > q1 & x$RentaPC < q2)
# nq3Oceania = sum(x$Cont == "Oceania" & x$RentaPC > q2 & x$RentaPC < q3)
# nq4Oceania = sum(x$Cont == "Oceania" & x$RentaPC > q3)
# 
# 
# 
# lg <- c("Q1","Q2","Q3", "Q4")
# colors = c("red","lightpink", "lightgreen", "green")
# 
# Values_2 <- matrix(c(nq1Africa, nq1America, nq1Asia,  nq1Europa, nq1Oceania,  
#                      nq2Africa, nq2America, nq2Asia,  nq2Europa, nq2Oceania,  
#                      nq3Africa, nq3America, nq3Asia,  nq3Europa, nq3Oceania,
#                      nq4Africa, nq4America, nq4Asia,  nq4Europa, nq4Oceania), 
#                    nrow = 4, ncol = 5, byrow = TRUE)
# 
# barplot(Values_2,
#         ylab = "", xlab = "", ylim = c(0, 60), col = colors,
#         xaxs="i", yaxs="i", xaxt='n', yaxt='n',
#         space=c(0, 0.4, 0.4, 0.4, 0.4))
# axis(1, seq(0.5, 6.1, by=1.4), labels = Zona, tck=-0.02, cex.axis=t-0.1, padj = -1.15, xpd = NA)
# axis(2, seq(0, 60, by=10), tck=-0.02, hadj = 0.85, las=1, cex.axis=t)
# 
# mtext(side = 2, text = "Ventas (M€)", line = 1, cex=t+0.1)
# 
# legend(5.5, 60, lg, cex = t-0.05, fill = colors, bty = "n")
# dev.off()
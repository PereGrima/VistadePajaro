library(png)
datos = c(52, 43, 42, 19)

png("escalaHorizontalBarras.png", width=1350, height=600, res = 300)
par(mar=c(1.3, 1.5, 0.5, 0) + 0.1, mgp = c(0,0,0), mfrow=c(1,2))
t=0.6

barplot(height=datos, width = 0.9, space = 0.5,
        xlab="", ylab="", 
        ylim=c(0, 60), xpd = FALSE,  yaxt='n',
)
axis(1, at=c(0.85, 2.25, 3.65, 5.05), labels = c("2021", "2022", "2023", "2024"), 
     tck=-0.02, cex.axis=t-0.05, padj = -0.4)
axis(2, at=seq(0, 60, 10), las=1, tck=-0.02, hadj = 1.5, cex.axis=t-0.05)
box(bty="l")
text(5.05, -8, "(hasta Abril)", xpd=NA, cex = t-0.05)
abline(h = c(10, 20, 30, 40, 50, 60), lty = 3, col = "grey")


barplot(height=datos, width = 0.9, space = 0.5,
        xlab="", ylab="", 
        ylim=c(0,60), xpd = FALSE,  yaxt='n',
)
rect(4.5, 19, 5.4, 54, col = NA, lty = 2)

axis(1, at=c(00.85, 2.25, 3.65, 5.05), labels = c("2021", "2022", "2023", "2024*"), 
     tck=-0.02, cex.axis=t, padj = -0.2)
axis(2, at=seq(10, 60, 10), las=1, tck=-0.02, hadj = 1.5, cex.axis=t-0.05)
axis(2, at=0, las=1, tck=-0.02, hadj = 1.9, cex.axis=t-0.05)
box(bty="l")
text(3, -9, "*Hasta Abril, con previsión para todo el año", xpd=NA, cex = t-0.05)
abline(h = c(10, 20, 30, 40, 50, 60), lty = 3, col = "grey")

dev.off()

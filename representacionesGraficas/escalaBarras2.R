library(png)

datos = c(25.93, 26.44, 26.68, 26.88)

png("escalaBarras2.png", width=650, height=600, res = 300)
par(mar=c(1, 1.5, 0.5, 0) + 0.1, mgp = c(0,0,0))
t=0.6

barplot(height=datos,  
        col=c("lightblue", "lightgreen", "lightpink", "orange"),
        xlab="", ylab="", 
        ylim=c(25, 27), xpd = FALSE,  yaxt='n',
)
axis(1, at=c(0.7, 1.95, 3.15, 4.3), labels = c("TV1", "TV2", "TV3", "TV4"), 
     tck=-0.02, cex.axis=t+0.05, padj = -0)
axis(2, at=seq(25.5, 27, 0.5), las=1, tck=-0.02, hadj = 1.3, cex.axis=t-0.05)
axis(2, at=25, las=1, label="0", tck=-0.02, hadj = 1.9, cex.axis=t-0.05)
box(bty="l")

rect(-0.5, 25.15, 5, 25.25, col ="white", border = "white", xpd = TRUE)
segments(-0.1, 25.15, 5.2, 25.15, lty = 5, xpd = TRUE)
segments(-0.1, 25.25, 5.2, 25.25, lty = 5, xpd = TRUE)

dev.off()

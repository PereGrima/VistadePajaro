library(png)

datos = c(25.93, 26.44, 26.68, 26.88)

png("escalaBarras.png", width=1350, height=600, res = 300)
par(mar=c(1, 1.5, 0.5, 0) + 0.1, mgp = c(0,0,0), mfrow=c(1,2))
t=0.6

barplot(height=datos,  
        col=c("lightblue", "lightgreen", "lightpink", "orange"),
        xlab="", ylab="", 
        ylim=c(25, 27), xpd = FALSE,  yaxt='n',
)
axis(1, at=c(0.7, 1.95, 3.15, 4.3), labels = c("TV1", "TV2", "TV3", "TV4"), 
     tck=-0.02, cex.axis=t+0.05, padj = -0)
axis(2, at=seq(25, 27, 0.5), las=1, tck=-0.02, hadj = 1.3, cex.axis=t-0.05)
box(bty="l")

barplot(height=datos, 
        col=c("lightblue", "lightgreen", "lightpink", "orange"),
        xlab="", ylab="", 
        ylim=c(0,30), xpd = FALSE,  yaxt='n',
)

axis(1, at=c(0.7, 1.95, 3.15, 4.3), labels = c("TV1", "TV2", "TV3", "TV4"), 
     tck=-0.02, cex.axis=t+0.05, padj = -0)
axis(2, at=seq(10, 30, 5), las=1, tck=-0.02, hadj = 1.5, cex.axis=t-0.05)
axis(2, at=seq(0, 5, 5), las=1, tck=-0.02, hadj = 1.9, cex.axis=t-0.05)
box(bty="l")


dev.off()

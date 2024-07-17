library(png)

#read file
img1<-readPNG("Barras3D_1.png")
img2<-readPNG("Barras3D_2.png")
img3<-readPNG("SerieTiempo3D_1.png")
img4<-readPNG("SerieTiempo3D_2.png")

#open new file for output
png("graficos3D.png", width=1350, height=1200, res = 300)
par(mar=c(0, 0, 0, 0) + 0.1, mgp = c(0,0,0), mfrow=c(2,2))
plot.new()
plot.window(0:1, 0:1)

#fill plot with image
usr<-par("usr")    
rasterImage(img1, usr[1], usr[3], usr[2], usr[4])


plot.new()
plot.window(0:1, 0:1)

#fill plot with image
usr<-par("usr")    
rasterImage(img2, usr[1], usr[3], usr[2], usr[4])


plot.new()
plot.window(0:1, 0:1)

#fill plot with image
usr<-par("usr")    
rasterImage(img3, usr[1], usr[3], usr[2], usr[4])

par(mar=c(0.5, 0.5, 0.5, 0.5))
plot.new()
plot.window(0:1, 0:1)

#fill plot with image
usr<-par("usr")    
rasterImage(img4, usr[1], usr[3], usr[2], usr[4])

dev.off()

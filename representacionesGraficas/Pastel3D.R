library(png)

#read file
img1<-readPNG("Pastel3D_1.png")
img2<-readPNG("Pastel3D_2.png")

#open new file for output
png("Pastel3D.png", width=1350, height=550, res = 300)
par(mar=c(0, 0, 0, 0) + 0.1, mgp = c(0,0,0), mfrow=c(1,2), family = "serif")
plot.new()
plot.window(0:1, 0:1)

#fill plot with image
usr<-par("usr")    
rasterImage(img1, usr[1], usr[3], usr[2], usr[4])

#par(mar=c(0.5, 0.5, 0.5, 0.5))
par(mar=c(0, 0, 0, 0))
plot.new()
plot.window(0:1, 0:1)

#fill plot with image
usr<-par("usr")    
rasterImage(img2, usr[1], usr[3], usr[2], usr[4])

dev.off()

library(treemap)

datosGapminder <- read.csv2("datosGapminder.csv")
#x = subset(datosGapminder, anio==2019 & Poblacion > 100000)
x = subset(datosGapminder, anio==2019)
x$Poblacion = x$Poblacion/1000

png("rectPropor.png", width=1500, height=1400, res = 300)

# Create data
group <- x$Pais
Poblacion <- x$Poblacion
data <- data.frame(group,Poblacion)

# treemap
treemap(data,
        index="group",
        vSize="Poblacion",
        #type="index",
        fontsize.title = 9,
        fontsize.labels = 9,
        fontsize.legend = 6,
        fontface.labels = c("plain", rep("plain", length(data[,1]) - 50)),
        border.lwds = 0.5,
        lowerbound.cex.labels = 0
)

dev.off()
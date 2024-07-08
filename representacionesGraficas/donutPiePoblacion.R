datosGapminder <- read.csv2("datosGapminder.csv")
#x = subset(datosGapminder, anio==2019 & Poblacion > 100000)
x = subset(datosGapminder, anio==2019)

png("donutPiePoblacion.png", width=1300, height=600, res = 300)
x$Poblacion = x$Poblacion/1000000

nAfrica = sum(x$Poblacion[x$Cont == "Africa"])
nAmerica = sum(x$Poblacion[x$Cont == "America"])
nAsia = sum(x$Poblacion[x$Cont == "Asia"])
nEuropa = sum(x$Poblacion[x$Cont == "Europa"])
nOceania = sum(x$Poblacion[x$Cont == "Oceania"])

##################################################################
# https://r-graph-gallery.com/130-ring-or-donut-chart.html
# The doughnut function permits to draw a donut plot
donut <-
  function (x, labels = names(x), edges = 200, outer.radius = 0.8,
            inner.radius=0.6, clockwise = FALSE,
            init.angle = if (clockwise) 90 else 0, density = NULL,
            angle = 45, col = NULL, border = FALSE, lty = NULL,
            main = NULL, ...)
  {
    if (!is.numeric(x) || any(is.na(x) | x < 0))
      stop("'x' values must be positive.")
    if (is.null(labels))
      labels <- as.character(seq_along(x))
    else labels <- as.graphicsAnnot(labels)
    x <- c(0, cumsum(x)/sum(x))
    dx <- diff(x)
    nx <- length(dx)
    plot.new()
    pin <- par("pin")
    xlim <- ylim <- c(-1, 1)
    if (pin[1L] > pin[2L])
      xlim <- (pin[1L]/pin[2L]) * xlim
    else ylim <- (pin[2L]/pin[1L]) * ylim
    plot.window(xlim, ylim, "", asp = 1)
    if (is.null(col))
      col <- if (is.null(density))
        palette()
    else par("fg")
    col <- rep(col, length.out = nx)
    border <- rep(border, length.out = nx)
    lty <- rep(lty, length.out = nx)
    angle <- rep(angle, length.out = nx)
    density <- rep(density, length.out = nx)
    twopi <- if (clockwise)
      -2 * pi
    else 2 * pi
    t2xy <- function(t, radius) {
      t2p <- twopi * t + init.angle * pi/180
      list(x = radius * cos(t2p),
           y = radius * sin(t2p))
    }
    for (i in 1L:nx) {
      n <- max(2, floor(edges * dx[i]))
      P <- t2xy(seq.int(x[i], x[i + 1], length.out = n),
                outer.radius)
      polygon(c(P$x, 0), c(P$y, 0), density = density[i],
              angle = angle[i], border = border[i],
              col = col[i], lty = lty[i])
      Pout <- t2xy(mean(x[i + 0:1]), outer.radius)
      lab <- as.character(labels[i])
      if (!is.na(lab) && nzchar(lab)) {
        lines(c(1, 1.1) * Pout$x, c(1, 1.05) * Pout$y)
        text(1.15 * Pout$x, 1.15 * Pout$y, labels[i],
             xpd = TRUE, adj = ifelse(Pout$x < 0, 1, 0),
             col = "black", ...)
      }
      # Add white disc
      Pin <- t2xy(seq.int(0, 1, length.out = n*nx),
                  inner.radius)
      polygon(Pin$x, Pin$y, density = density[i],
              angle = angle[i], border = border[i],
              col = "white", lty = lty[i])
    }
    
    title(main = main, ...)
    invisible(NULL)
  }
########################################################################

par(mar=c(0, 1, 0, 1) , mfrow=c(1,2), xpd = TRUE)

donut(c(nAfrica, nAmerica, nAsia, nEuropa, nOceania), 
         labels = c("África","América","Asia","Europa", "Oceanía"),
         edges = 10000,
         inner.radius=0.5,
         border = TRUE,
         lty = 0,
         lwd = 0.01,
         col = c("red", "green", "blue", "orange", "pink"),
         cex = 0.5)


donut(c(nAfrica, nAmerica, nAsia, nEuropa, nOceania), 
      labels = c("África","América","Asia","Europa", "Oceanía"),
      edges = 10000,
      inner.radius=0,
      border = TRUE,
      lty = 0,
      lwd = 0.5,
      col = c("red", "green", "blue", "orange", "pink"),
      cex = 0.5)

dev.off()
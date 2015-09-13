### construct the Plot-2

##load required library
library(graphics)
library(grDevices)
library(ggplot2)
library(lattice)

plot2 <- function() {
  plot(dataFrame$timestamp,dataFrame$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.copy(png, file="D:/Coursera/ExploratoryAnalysis/Assignment/CourserProject-1/figure/plot2.png", width=480, height=480)
  dev.off()
}
plot2()

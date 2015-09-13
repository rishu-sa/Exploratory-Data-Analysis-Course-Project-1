### construct the Plot-1

##load required library
library(graphics)
library(grDevices)
library(ggplot2)
library(lattice)

plot1 <- function() {
  hist(dataFrame$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
  dev.copy(png, file="D:/Coursera/ExploratoryAnalysis/Assignment/CourserProject-1/figure/plot1.png", width=480, height=480)
  dev.off()
}
plot1()

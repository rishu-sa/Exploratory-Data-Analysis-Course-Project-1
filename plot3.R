### construct the Plot-3

##load required library
library(graphics)
library(grDevices)
library(ggplot2)
library(lattice)

plot3 <- function() {
  plot(dataFrame$timestamp,dataFrame$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(dataFrame$timestamp,dataFrame$Sub_metering_2,col="red")
  lines(dataFrame$timestamp,dataFrame$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
  dev.copy(png, file="D:/Coursera/ExploratoryAnalysis/Assignment/CourserProject-1/figure/plot3.png", width=480, height=480)
  dev.off()
}
plot3()

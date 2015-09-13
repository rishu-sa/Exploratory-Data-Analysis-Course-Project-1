### construct the Plot-4

##load required library
library(graphics)
library(grDevices)
library(ggplot2)
library(lattice)

plot4 <- function() {
  par(mfrow=c(2,2))
  
  ##plot-1
  plot(dataFrame$timestamp,dataFrame$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  
  ##plot-2
  plot(dataFrame$timestamp,dataFrame$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  ##plot-3
  plot(dataFrame$timestamp,dataFrame$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(dataFrame$timestamp,dataFrame$Sub_metering_2,col="red")
  lines(dataFrame$timestamp,dataFrame$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly
  
  #plot-4
  plot(dataFrame$timestamp,dataFrame$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  
  #result
  dev.copy(png, file="D:/Coursera/ExploratoryAnalysis/Assignment/CourserProject-1/figure/plot4.png", width=480, height=480)
  dev.off()
}
plot4()

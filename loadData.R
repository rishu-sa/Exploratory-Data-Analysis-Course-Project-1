### load data into R

##load required library
library(data.table)

## read data from the file
filename <- "D:/Coursera/ExploratoryAnalysis/Assignment/CourserProject-1/household_power_consumption.txt"
power <- read.table(filename, header=T, sep=";")

## change data format
power$Date <- as.Date(power$Date, format="%d/%m/%Y")

## read data between the required data range
dataFrame <- power[(power$Date=="2007-02-01") | (power$Date=="2007-02-02"),]

dataFrame$Global_active_power <- as.numeric(as.character(dataFrame$Global_active_power))
dataFrame$Global_reactive_power <- as.numeric(as.character(dataFrame$Global_reactive_power))

dataFrame$Voltage <- as.numeric(as.character(dataFrame$Voltage))

dataFrame <- transform(dataFrame, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")

dataFrame$Sub_metering_1 <- as.numeric(as.character(dataFrame$Sub_metering_1))
dataFrame$Sub_metering_2 <- as.numeric(as.character(dataFrame$Sub_metering_2))
dataFrame$Sub_metering_3 <- as.numeric(as.character(dataFrame$Sub_metering_3))


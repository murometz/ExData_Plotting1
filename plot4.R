
setwd("C:\\Users\\IBM_ADMIN\\Documents\\R\\Online Coursera\\Exploratory Data Analysis\\ExData_Plotting1")

source("load_data.R")

plot4 <- paste(getwd(), "/plot4.png", sep = "")
if(!file.exists(plot4)){
  png(plot4, width = 480, height = 480)
  par(mfrow=c(2,2))	
  plot(epcData$Time, epcData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
  plot(epcData$Time, epcData$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
  plot(epcData$Time, epcData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(epcData$Time, epcData$Sub_metering_2, type="l", col="red")
  lines(epcData$Time, epcData$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  plot(epcData$Time, epcData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
  dev.off()
} else {
  par(mfrow=c(2,2))	
  plot(epcData$Time, epcData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
  plot(epcData$Time, epcData$Voltage, type = "l", xlab = "datetime", ylab = "Global Active Power")
  plot(epcData$Time, epcData$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(epcData$Time, epcData$Sub_metering_2, type="l", col="red")
  lines(epcData$Time, epcData$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  plot(epcData$Time, epcData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Active Power")
}

setwd("C:\\Users\\IBM_ADMIN\\Documents\\R\\Online Coursera\\Exploratory Data Analysis\\ExData_Plotting1")


source("load_data.R")

plot2 <- paste(getwd(), "/plot2.png", sep = "")
if(!file.exists(plot2)){
  png(plot2, width = 480, height = 480)
  plot(epcData$Time, epcData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
} else {
  plot(epcData$Time, epcData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}

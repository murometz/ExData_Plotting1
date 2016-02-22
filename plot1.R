setwd("C:\\Users\\IBM_ADMIN\\Documents\\R\\Online Coursera\\Exploratory Data Analysis\\ExData_Plotting1")

source("load_data.R")

plot1 <- paste(getwd(), "/plot1.png", sep = "")
if(!file.exists(plot1)){
  png(plot1, width = 480, height = 480)
  hist(epcData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
  dev.off()
} else {
  hist(epcData$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}


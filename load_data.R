setwd("C:\\Users\\IBM_ADMIN\\Documents\\R\\Online Coursera\\Exploratory Data Analysis\\ExData_Plotting1")

library(httr) 

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

dataFolder <- graphics <- paste(getwd(), "/data", sep = "")
if(!file.exists(dataFolder)){
  dir.create(dataFolder)
}

# graphics <- paste(getwd(), "/graphics", sep = "")
# if(!file.exists(graphics)){
#   dir.create(graphics)
# }

zip <- paste(getwd(), "/data/household_power_consumption.zip", sep = "")

if(!file.exists(zip)){
  download.file(url, zip)
}
unzipped <- paste(getwd(), "/data/household_power_consumption.txt", sep = "")

if(!file.exists(unzipped)){
  unzip(unzipped, list = FALSE, overwrite = FALSE, exdir = dataFolder)
}

dataRObjects <- paste(getwd(), "/data/dataRObjects.rds", sep = "")

if(!file.exists(dataRObjects)){
  dataFile <- paste(getwd(), "/data/household_power_consumption.txt", sep = "")
  epcData <- read.table(dataFile, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
  epcData$Time <- strptime(paste(epcData$Date, epcData$Time), "%d/%m/%Y %H:%M:%S")
  epcData$Date <- as.Date(epcData$Date, "%d/%m/%Y")
  fechas <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  epcData <- subset(epcData, Date %in% fechas)
  ##dataRObjects <- paste(getwd(), "/", "data", "/", "dataRObjects", ".rds", sep="")
  saveRDS(epcData, dataRObjects)
} else {
  ##dataFile <- "/data/dataRObjects.rds"
  epcData <- readRDS(dataRObjects)
}


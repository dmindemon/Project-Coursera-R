library(data.table)
setwd("/Users/shenguangmin/Desktop/Coding/Coursera")
file = ("household_power_consumption.txt")

# Loading the data
head = read.csv(file, head=TRUE, sep=";", na.strings="?", nrow=5)
classes = sapply(head, class)
bigdata = read.csv(file, head=TRUE, sep=";", na.strings="?", colClasses=classes)
data = subset(bigdata, Date=="1/2/2007" | Date=="2/2/2007")
data$Time = paste(data$Date, data$Time, sep=" ")
data$Time = strptime(data$Time, format="%d/%m/%Y %H:%M:%S")
data$Date = as.Date(data$Date, format="%d/%m/%Y")
summary(data)
data=write.csv(data, file="data.csv")


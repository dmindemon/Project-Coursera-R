data = read.csv("data.csv")
with(data, hist(Global_active_power, breaks=15, xlab="Global Active Power (killowatts)", ylab="Frequency",col="red",main="Global Active Power"))
dev.copy(png, file="plot1.png")
dev.off()

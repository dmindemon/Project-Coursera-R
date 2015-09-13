data=read.csv("data.csv")
par(mfrow=c(2,2))
par("mar")
par(mar=c(4,4,1,1))

with(data, plot(Global_active_power, xaxt='n',xlab='',ylab='Global Active Power',type='l'))
axis(1,c(0,2880/2,2880),c('Thu','Fri','Sat'))

with(data, plot(Voltage,xaxt='n',xlab='datetime',ylab='Voltage',type='l'))
axis(1,c(0,2880/2,2880),c('Thu','Fri','Sat'))

plot(data$Sub_metering_1, type='l',xaxt='n',xlab='',ylab='Energy sub metering')
lines(data$Sub_metering_2, type='l', col='red')
lines(data$Sub_metering_3, type='l', col='blue')
axis(1,c(0,2880/2,2880),c('Thu','Fri','Sat'))
legend("topright",c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=c(1,1,1),col=c('black','red','blue'),bty='n',cex=0.6)

with(data, plot(Global_reactive_power, xaxt='n',xlab='datetime',ylab='Global_reactive_power',type='l'))
axis(1,c(0,2880/2,2880),c('Thu','Fri','Sat'))

dev.copy(png,"plot4.png")
dev.off()

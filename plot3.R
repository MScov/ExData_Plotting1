## Plot 3

datetime <- strptime(paste(df1$Date, df1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(datetime, df1$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, df1$Sub_metering_2, type="l", col="red")
lines(datetime, df1$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

dtPower <- read.table("household_power_consumption.txt", header=TRUE, quote="", na.strings="?", nrows=2880, skip=66636, sep=";", stringsAsFactors=FALSE, 
                      col.names=c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", 
                                  "Sub_metering_2", "Sub_metering_3"))
tmpDateConversion <- paste(dtPower$Date, dtPower$Time)
dtPower$datetime <- strptime(tmpDateConversion, "%d/%m/%Y %H:%M:%S")
png(file="plot3.png", width=480, height=480, bg="transparent")
plot(dtPower$datetime, dtPower$Sub_metering_1, type="n", main="", xlab="", ylab="Energy sub metering")
lines(dtPower$datetime, dtPower$Sub_metering_1)
lines(dtPower$datetime, dtPower$Sub_metering_2, col="red")
lines(dtPower$datetime, dtPower$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1))
dev.off()
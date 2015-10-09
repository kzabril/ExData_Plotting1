dtPower <- read.table("household_power_consumption.txt", header=TRUE, quote="", na.strings="?", nrows=2880, skip=66636, sep=";", stringsAsFactors=FALSE, 
                      col.names=c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", 
                                  "Sub_metering_2", "Sub_metering_3"))
png(file="plot1.png", width=480, height=480, bg="transparent")
hist(dtPower$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
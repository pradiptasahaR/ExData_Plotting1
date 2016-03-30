file <- "./EDA/household_power_consumption.txt"
pc <- read.table(file,header=TRUE,sep=";",stringsAsFactors=FALSE)
subpc <- pc[pc$Date %in% c("1/2/2007","2/2/2007"),]
subpc$DateTime <- strptime(paste(subpc$Date, subpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(subpc$DateTime,subpc$Sub_metering_1,type="s",xlab="",ylab = "Energy sub metering")
lines(subpc$Sub_metering_2,type="s",col="red")
lines(subpc$DateTime,subpc$Sub_metering_2,type="s",col="red")
lines(subpc$DateTime,subpc$Sub_metering_3,type="s",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2, col=c("black", "red", "blue"))
dev.off()
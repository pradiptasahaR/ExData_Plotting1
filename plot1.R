file <- "./EDA/household_power_consumption.txt"
pc <- read.table(file,header=TRUE,sep=";",stringsAsFactors=FALSE)
subpc <- pc[pc$Date %in% c("1/2/2007","2/2/2007"),]
subpc$DateTime <- strptime(paste(subpc$Date, subpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot1.png", width=480, height=480)
hist(as.numeric(subpc$Global_active_power),xlab="Global Active Power (kilowatts)",main="Global Active Power",col = "red")
dev.off()
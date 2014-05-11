download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip")
powcon <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
powcon$Date <- as.Date(powcon$Date, format="%d/%m/%Y")
hist(powcon$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.copy(png,file="plot1.png")
dev.off()
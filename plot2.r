download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="household_power_consumption.zip",method="curl")
unzip("household_power_consumption.zip")
powconraw <- read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
powcon <- powconraw[powconraw$Date=="1/2/2007" | powconraw$Date=="2/2/2007",]
powcon$Date <- as.Date(powcon$Date, format="%d/%m/%Y")
powcon$datetime <- as.POSIXct(paste(powcon$Date, powcon$Time), format="%Y-%m-%d %H:%M:%S")
with(powcon, plot(datetime,Global_active_power, type="l", ylab="Global Active Power (kilowatts)"))
dev.copy(png,file="plot2.png")
dev.off()
df<-read.table("C:/Users/adai/Coursera/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df.subset <- subset(df, Date>="2007-02-01" & Date<="2007-02-02")
df.subset$timetemp<-paste(df.subset$Date,df.subset$Time)
df.subset$Time <- strptime(df.subset$timetemp, format = "%Y-%m-%d %H:%M:%S")

##Plot2
png(filename="C:/Users/adai/Coursera/EDA_Assignment1/plot2.png",width = 480, height = 480, units = "px")
plot(df.subset$Time,df.subset$Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xlab="")
dev.off()
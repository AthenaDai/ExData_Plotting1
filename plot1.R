df<-read.table("C:/Users/adai/Coursera/household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df.subset <- subset(df, Date>="2007-02-01" & Date<="2007-02-02")
df.subset$timetemp<-paste(df.subset$Date,df.subset$Time)
df.subset$Time <- strptime(df.subset$timetemp, format = "%Y-%m-%d %H:%M:%S")
##Plot1
png(filename="C:/Users/adai/Coursera/EDA_Assignment1/plot1.png",width = 480, height = 480, units = "px")
hist(df.subset$Global_active_power,col="red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)" )
dev.off()
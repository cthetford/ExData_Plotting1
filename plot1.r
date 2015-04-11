

h<-read.table("household_power_consumption.txt",
            header=TRUE,
            colClasses = c("character", "character", rep("numeric",7)),
            sep=";",
            na.strings="?")
pdata<- h[h$Date %in% c("1/2/2007","2/2/2007"),]
hist(pdata$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power(kilowatts)",
     col="red")

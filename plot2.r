

h<-read.table("household_power_consumption.txt",
            header=TRUE,
            colClasses = c("character", "character", rep("numeric",7)),
            sep=";",
            na.strings="?")
pdata<- h[h$Date %in% c("1/2/2007","2/2/2007"),]

pdata$Time  <- strptime(paste(pdata$Date,pdata$Time),format = "%d/%m/%Y %H:%M:%S", tz = "")
pdata$Date <- as.Date(pdata$Date,"%d/%m/%Y")

plot(pdata$Time,pdata$Global_active_power,type="l",
     ylab="Global Active Power (kilowatts)",
     xlab="") 



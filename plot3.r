

h<-read.table("household_power_consumption.txt",
            header=TRUE,
            colClasses = c("character", "character", rep("numeric",7)),
            sep=";",
            na.strings="?")
pdata<- h[h$Date %in% c("1/2/2007","2/2/2007"),]

pdata$Time  <- strptime(paste(pdata$Date,pdata$Time),format = "%d/%m/%Y %H:%M:%S", tz = "")
pdata$Date <- as.Date(pdata$Date,"%d/%m/%Y")


    with (pdata,plot(Time, Sub_metering_1,
                     type="l",
                     col="black",
                     ylab="Energy sub metering",
                     xlab=""))
    with (pdata,lines(Time, Sub_metering_2,
                      type="l",
                      col="red"))
    with (pdata,lines(Time, Sub_metering_3,
                      type="l",
                      col="blue"))
    legend("topright",
           col=c("black","red","blue"),
           legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),
           lty="11")




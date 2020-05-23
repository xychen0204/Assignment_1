setwd("D:/R")

power = read.table("household_power_consumption.txt",header=T,sep=';')
index1 = power[,1]=='1/2/2007' | power[,1]=='2/2/2007'
power_data = power[index1,]

x=as.numeric(as.character(power_data[,7]))
y=as.numeric(as.character(power_data[,8]))
z=as.numeric(as.character(power_data[,9]))

par(mfrow = c(2,2),mar = c(4,4,2,1))
plot(as.numeric(as.character(power_data[,3])),type='l',xaxt="n",xlab="",ylab="Global Active Power")
axis(1,c(0,1440,2880),labels=c('Thu',"Fri","Sat"))

plot(as.numeric(as.character(power_data[,5])),type='l',xaxt="n",xlab="datetime",ylab="Voltage")
axis(1,c(0,1440,2880),labels=c('Thu',"Fri","Sat"))

plot(x,type='l',xaxt="n",xlab="",ylab="Energy sub metering")
lines(y,col='red')
lines(z,col='blue')
legend("topright",lty=1,col=c('black','red','blue'),bty="n",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.8)
axis(1,c(0,1440,2880),labels=c('Thu',"Fri","Sat"))

plot(as.numeric(as.character(power_data[,4])),type='l',xaxt="n",xlab="datetime",ylab="Global_reactive_power")
axis(1,c(0,1440,2880),labels=c('Thu',"Fri","Sat"))
setwd("D:/R")

power = read.table("household_power_consumption.txt",header=T,sep=';')
index1 = power[,1]=='1/2/2007' | power[,1]=='2/2/2007'
power_data = power[index1,]

x=as.numeric(as.character(power_data[,7]))
y=as.numeric(as.character(power_data[,8]))
z=as.numeric(as.character(power_data[,9]))

plot(x,type='l',xaxt="n",xlab="",ylab="Energy sub metering")
lines(y,col='red')
lines(z,col='blue')
legend("topright",lty=1,col=c('black','red','blue'),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
axis(1,c(0,1440,2880),labels=c('Thu',"Fri","Sat"))
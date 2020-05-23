setwd("D:/R")

power = read.table("household_power_consumption.txt",header=T,sep=';')
index1 = power[,1]=='1/2/2007' | power[,1]=='2/2/2007'
power_data = power[index1,]

plot(power_data[,3],type='l',xaxt="n",xlab="",ylab="Global Active Power (kilowatts)")
axis(1,c(0,1440,2880),labels=c('Thu',"Fri","Sat"))
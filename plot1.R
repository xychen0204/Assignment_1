setwd("D:/R")

power = read.table("household_power_consumption.txt",header=T,sep=';')
index1 = power[,1]=='1/2/2007' | power[,1]=='2/2/2007'
power_data = power[index1,]

power_data[,3]=as.numeric(as.character(power_data[,3]))
hist(power_data[,3],col='wheat',main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
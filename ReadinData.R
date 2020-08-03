### Assignment

#read in data
df <- read.table("household_power_consumption.txt", sep = ";", header = T, na.strings="?")


#Only select cases between 2007-02-01 and 2007-02-02

df1 <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

# Creat datetime Variable
datetime <- strptime(paste(df1$Date, df1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
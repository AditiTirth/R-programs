ages = c(21,30,40,22,45,50,51,23,25,35)
plot(ages) #by default it gives index on x axis and values on y

salary = c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)

plot(ages,salary) #(x,y)
plot(salary,ages)

help(plot)

#airquality = read.csv
#click on Import dataset

data()
airquality = datasets::airquality

#top 10 rows and last 10 rows
head(airquality,10)
dim(airquality)
names(airquality) #names of all columns

airquality[,c(1,2)] #all rows and first two col

df3= airquality[,-6]#excludes column no. 6

summary(airquality[,1]) #summary statistics for column 1

summary(airquality$Temp)

airquality$Wind

summary(airquality)

####visualization
plot(airquality$Wind)
plot(airquality$Temp, airquality$Wind,type="p")
plot(airquality)#scatterplot
help(plot)

plot(airquality$Ozone,airquality$Month)

#points and lines
plot(airquality$Wind, type="p") #p:points, l=lines, b=both
plot(airquality$Wind, type="l")
plot(airquality$Wind, type="b")

plot(airquality$Wind,
     xlab="ozone concentration",
     ylab="No of Instances",
     main="Ozone levels in NY city",
     col='red',
     type ='l')
plot(airquality,col='red') #plot of entire data

plot(airquality$Ozone,airquality$Solar.R)
plot(airquality$Solar.R,airquality$Ozone)

#horizontal bar plot
barplot(airquality$Ozone,
        main="ozone concentration in air",
        ylab="ozone levels",
        col="blue",
        horiz=T,
        axes=T)
help(barplot)

#histogram
hist(airquality$Temp)

hist(airquality$Temp,
     main="solar radiation values in air",
     xlab="solar radiation",
     col="orange",
     border="yellow")

help(hist)

#single box plot
boxplot(airquality$Wind,
        main="Boxplot",
        col="orange",
        border="BLACK",
        horizontal=T)

boxplot.stats(airquality$Wind)$out #outliers value

boxplot(airquality$Temp,
        main="Boxplot",
        col="orange",
        border="BLACK",
        horizontal=T)

#multiple box plots
boxplot(airquality[,1:4],
        main="Multiple box plots",
        horizontal=T,
        col='grey')

#margin of the grid(mar)(bottom,left,top,right)
#no of rows and columns(mfrow)

help(par)
par(mfrow=c(3,3), mar=c(1,2,1,2), las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Wind, type="l")
plot(airquality$Solar.R, type="l")
barplot(airquality$Ozone, main="Ozone Concentration",
        xlab="Ozone levels",col="orange", horiz=T)
hist(airquality$Solar.R, main="Box plot")
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main="multiple boxplots")

par(mfrow=c(3,3), mar=c(1,2,1,2), las=1, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Wind, type="l")

#Considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm=T) #to remove NA
median(airquality$Solar.R)

#variance and standard deviation
var(airquality$Wind)
sd(airquality$Ozone) #has some na values so,-
sd(airquality$Ozone, na.rm=T)

skewness(airquality$Ozone) #error before installing
kurtosis(airquality$Ozone) #error

skewness(airquality$Ozone, na.rm=T)

#density plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm=T))     
??density #check kernel density estimation


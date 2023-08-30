"Hello World"
'Hello World'

10 #only single number 
5 10 20 #will raise error

#VARIABLE

name1= "AMIT"
name2= "Arnav"
name3="Vaidehi"
name4="Tarun"
name5="Zahir"

age=25

x=21

name2

age=age+5

4*8

text="Excellent"
paste("Excelr is", text) #Concatenate/combine
paste ("My brother's name is", name2)

#legal variable names
myvar="Aditi"
my_var="Arnav"
myVar="Vaidehi"
MYVAR="Tarun"
myvar2="Zahir"
this.year=2022

#illegal variable
2myvar="s"
my-var="s"
my var="s"
_my_var="s"
my_v@ar="s"

#data types in R
#Numeric/float - decimal whole +ve -ve

x=10.5
class(x)
class(name1)

#integer - whole +ve -ve L
y = 1000L
class(y)

#Character/string
x="R is exciting"
class (x)

#logical/boolean
x= TRUE 
class(x)
x=F

3>5
5>3
5==5 #comparison operator
1 !=6 #not equal to

#Arithmetic operator
x=20
y=3

x+y
x-y
x*y
x/y #float/decimal result
x^y
x%%y #modulus
x%/%y #integer division

2*pi

??constants
month.abb
letters

#assignment operator
x=50
50->x

#built in math functions

max(20,60,10)
min(20,60,10)
sqrt(25)
abs(-4.5) #absolute value

#data structures: vectors, dataframes 
#homogeneous vectors

#vector of strings
fruits=c("banana","apple","orange", "strawberry")
class(fruits)

numbers= c(10,20,30)
n1=c(T,F,TRUE,FALSE)
class(n1)

#heterogeneous vectors
mix = c(81,5.2,TRUE,"Mango",5L,F)
class(mix)

x=c(2,5,8,4)
y=c(1,9,9,9)
x+y

x*5
(x+y)*1.5

#sequence
1:10
seq(1,50,5) #start value,end value, step/increment value/decrement
seq(1,50,by=3) #by is optional you can write or leave
seq(1,10)
seq(50,1,-5) 

n1=1.5:6.3

#repetition
rep(45,7)
rep("mango",5)

#random sample
sample(1:50,3)
sample(1:10,200) #error
sample(1:10,200,replace=TRUE)
sample(c("HP","APPLE","LENOVO"),7,replace=T)
sample(c("HP","APPLE","LENOVO"),2)

#Indexing
x=c(2,3,8,6,4,52,98)
x[6]
x[1]
x[c(4,5)]

x[-1] #exclude 1st element
x[-2]
x[c(-1,-2)]

x[1]=4
x

x[-1]=5
x

x[3]=10
x
x[4]=8
x[c(1,3)] #1st and 3rd element will be displayed
x[1,3] #error

y=c(1,9,9,9)
y
y<9

y[y<9]=7
y

y[y>7]=10
y

#relation operators with vectors
marks=c(60,70,80,50,90)
marks>50

marks[marks>50]

marks==80

names=c("arnav","vaidehi","zahir","tarun")
p1=c('a','b')

"zahir" %in% names
"rutuja" %in% names

#slicing
marks
marks[3:7]
marks[4]

marks[3]=97
marks

marks[-3]=100
marks

#to add value
marks[6]=90
marks

price = c(2999,449,29,650,2800,192,9384,562,8741,40)
price[2:7]

#select elements from a vector with conditions
price[price>1000]

sort(price)

sort(price, descending = T) #error
help(sort)
sort(price,decreasing=TRUE)

help(mean)
length(marks) 

paste(1:12)
nth= paste(1:12, c("st","nd","rd",rep("th",9)))

month.name
month.abb

paste(month.abb,"is the", nth, "month of the year.")

#Basic functions on vectors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
mode(price)

#Data frames
#slicing data frames
a=c(42,18,91,87,66)
b=c("p","q","r","s","t")

data.frame(a,b)
df= data.frame(a,b)

df1= data.frame(Training =c("strength","stamina","other"),
                Pulse=c(100,150,200),
                Duration=c(60,30,45))
df1
df1[,1]#all rows, 1st col
df1[2,]
df1[,3]
df1[,]

df1$Training

df2= data.frame(Height = c(150,160),
                Weight=c(65,72))

food= data.frame(name =c("Paneer Tikka", "Pav Bhaji", "Rasmali", "Butter Chicken","Fish Curry","Mutton Biryani"),
                 type= c("Veg","Veg","Veg","Nonveg","Nonveg","Nonveg"),
                 taste=c("Spicy","Spicy","Sweet","Medium","Spicy","Spicy"),
                 price=c(180,120,60,200,200,250))

food[food$type=="Veg",]
food$name
food[food$type=="Nonveg",c(1,4)] #or it can be done by -
food[food$type=="Nonveg", c("name","price")]

#all spicy food with price less than 300

food[food$taste=="Spicy" & food$price<300,]
food[food$taste=="Spicy" | food$price<300,]

#Orange, mtcars are built in data set. Learn with this dataset.
Orange
mtcars

dim(mtcars) #no of rows and no of columns
nrow(mtcars)#no of rows
ncol(mtcars) #no of columns
str(mtcars)#structure - col names data types and values
summary(mtcars)

help(mtcars)
mtcars$cyl #individual col cyl values
table(mtcars$cyl) #there are 11 cars having 4 cylinders, 7 cars - 6 cyl, 14 cars-8cyl
mtcars$gear
table(mtcars$gear)

#USArrest - another dataset
USArrests
help("USArrests")
View(USArrests)#Dataset opens in new windows in table structure

head(USArrests) #by default shows first 6 records
tail(USArrests) #by default shows last 6 records

#for specific record
head(USArrests,8)
tail(USArrests,10)

#check all available datasets
data()

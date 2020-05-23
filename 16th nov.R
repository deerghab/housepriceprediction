.a_b_c=c(1,2,3)
.1abc=c(1,2,3)

a1bc=c(3,1,2,3)
a2bc=c(4.5,6,7)
(a3bc=c(a1bc,a2bc))
class(a3bc)
a4bc=c(4.5,5,6,'ABC')

class(a4bc)
mode(a4bc)
typeof(a4bc)

a1bc*c(2,3,4)
prod(a1bc,a2bc)
cumsum(a1bc)
length(a1bc)
unique(a1bc)
a=c(rep(2,2),rep(1,3))
unique(a)
order(a1bc)   ##gives the position of the number
sort(a1bc)

xyz=c('abc','yhs','def')
sort(xyz,decreasing = TRUE)
order(xyz)
rev(xyz)  ##reverses the order
rep(c(2,3),3)
length(rep(c(2,2),times=5))
rep(c(2,3),times=6,length.out=10)
rep(c(2,3),times=5,each=5)
seq(1,10,by = 2)
seq(20,10,-2)

xa=c(-1,2,3,4,5,6,200)
max(xa,na.rm = T)
min(xa)
xa=c(1,2,3,4,5,6,200,NA)
which.max(xa)
length(xa)
xa[1:3]
xa[xa>0]
xyz[xyz!='abc']
a=matrix(c(1,2,3,4),2,2)
dim(a)
det(a)
eigen(a)
t(a)
rowSums(a)
colSums(a)
rowMeans(a)
colMeans(a)

##array

a=c(1,2,4,5)
x=c('deergha','buddhadeo')
z=c(1.2,3.4,5.6)
array(c(a,x,z),dim = c(3,3))
array(2,3,4)

m=list(names=c('abc','shn'),number=c(1,2,3),marks=c(1.5,2.3,3.0))
m[[1]][2]
names(m)

ID=c(1,2)
m=c(10,20)
df1=data.frame(ID,m)
dim(df1)
df1[2,1]
df1[,c('m','ID')]
df2=data.frame(names=c('deergha','Ketan','buddhadeo'),ID=c(1,2,3),m=c(30,40,50))
df2[,c('names','ID')]
df2[c(1,2),c('names','ID')]
View(df2)
head(df2)
tail(df2,1)
names(df2)
colnames(df2)
row.names(df2)

df2$names
df2$new_col=df2$m*2
View(df2)

##dataframes are not robust
##data.table is crucial and fast

df2$new_col=NULL
View(df2)
df2$names=df2$ID=NULL
colstorem=c('names','ID')
col_rem=c(df2$names,df2$ID)
View(col_rem)
df2[ ,colstorem]=NULL
df2


gender=c(rep('Male',2),rep('Female',3))
class(gender)   
gender_fac=as.factor(gender)
class(gender_fac)
factor()
nlevels(gender_fac)

is.factor(gender_fac)
is.character(gender_fac)

as.character(5)

as.numeric(TRUE)
A=c('0','1')
a=factor(c('10','20','30'))
class(a)
c=as.character(a)
c
d=as.numeric(c)
d

class(A)
x=as.character(A)
X
D=as.numeric(A)
D

m=c('10 05 19')
class(m)
as.Date(m,format = '%d %m %y')

m=c('10,feb,2019')
class(m)
u=as.Date(m,format = '%d,%B,%Y')

format(u,'%d.%B.%Y')


strDates1 <- c("01-mar-1965")
(dates <- as.Date(strDates1, "%d-%B-%Y"))

# -- changing format of the date
format(dates,"%Y %b %d")
format(dates,"%y.%B.%d")
# -- Importing dates from numeric format
dates <- c(30829, 38540)
betterDates <- as.Date(dates,origin = "1899-12-30")
betterDates
w=as.Date('1970-02-01')
as.numeric(w)

v=as.Date('1969-02-01')
as.numeric(v)

# In R, dates are represented as the number of days since 1970-01-01,
# with negative values for earlier dates.
as.Date('01-03-68', "%d-%m-%y")
as.Date('01-03-69', "%d-%m-%y")

format(as.Date('01-03-65', "%d-%m-%y"),'19%y-%m-%d')


install.packages('lubridate')
library(lubridate)

Sys.Date() # returns today's date.
date()     # returns the current date and time.
# number of days between today and mydates2
dt1 <- c("2007-06-22")
dt2 <- c("2017-06-22")
(days <- as.Date(dt2) - as.Date(dt1)))/365

(days <- as.numeric(as.Date(dt2) - as.Date(dt1)/365))
++++
  ++++
  +++
  (days <- as.numeric((as.Date(dt2) - as.Date(dt1))/365))


(days <- difftime(as.Date(dt2),as.Date(dt1),units = 'days'))


# units can be "auto", "secs", "mins", "hours", "days", "weeks"

as.Date(dt1) %m+% months(1); as.Date(dt1) %m+% years(1);




getwd()
setwd('C:/Users/91721/Desktop/R datasets')

list.files()

car=read.csv(file.choose())
View(car)
dim(car)

install.packages('data.table')
library(data.table)

# Descriptive statistics using the psych package

# install.packages("psych")
library(psych)

data()
AirPassengers
BOD

# Using the New York airport flight data
# install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)
distance
summary(distance)
describe(distance)

demo = cbind(arr_delay, dep_delay, distance)
describe(demo)



# How to deal with missing data ... Need to learn
# Data visualization 


#Itroducing the hist()

dep_delay
hist(dep_delay)

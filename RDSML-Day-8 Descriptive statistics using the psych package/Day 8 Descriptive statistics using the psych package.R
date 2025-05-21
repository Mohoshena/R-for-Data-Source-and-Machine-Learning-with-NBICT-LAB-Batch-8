# Descriptive statistics using the psych package

install.packages("psych")

# need to load the package in environment 
# to activate the package library By library function without inverted comma in bracket

library(psych)

# so many data sets are already stored in data set
# we can use to practice any R program

data()
AirPassengers
BOD

# using the New York airport flight data
install.packages("nycflights13")
attach(nycflights13::flights)


# Lets look at the first 6 records using the head() function

head(nycflights13::flights)

# psych package provides many functions and 
# we saw the functions using library function
# Using data set we can use during practice various functions in R
# we attach the data sets and use in R

# head() shows a part of the data set from the top in any range

summary(distance)

# summary is the base package in R
# describe is from psych package

describe(distance)

# when we want to see or descriptive analysis 
# for more than one column, we will use cbind() cbind function
# comma in between every column head will be used 

demo = cbind(arr_delay, dep_delay, distance)
demo
describe(demo)

# f1 key will clarify or explain any colomn head in details


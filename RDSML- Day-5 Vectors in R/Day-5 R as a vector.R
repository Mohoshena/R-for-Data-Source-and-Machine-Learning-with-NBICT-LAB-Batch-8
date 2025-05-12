










# when you have a text item in the vector
b = c(5, 8, 2, "sv")
b
is.numeric(b)
is.character(b)

# we can convert data types
# For example from numeric to character
a = c(1, 2, 3, 4, 5)
a
class(a)
is.numeric(a)
a = as.character(a)
a
class(a)

# logical operator TRUE and FALSE when converted
# to numeric, TRUE converts to 1
# and FALSE converts to 0
d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d

# converting numeric to logical (1 or any number
# other than 0 converts to TRUE, 0 converts to FALSE)
d
class(d)
d = as.logical(d)
d

e = c(1, 0, 0, 1, 0, 23, -7, 0)
e = as.logical(e)
e

# creating sequential vector
# creating a vector starting from 1 to 10
my_seq = c(1:100) 
my_seq
my_seq = c(1:50, 80, 99, 88,60, 77, 71, 77, 61, 92, 97)
my_seq

# creating a sequential vector using the seq() function
# if seq is written, no need to use colon :
# 
new_seq = (seq(1,10))
new_seq


# sequence in steps of 3
new_seq = c(seq(1, 10, by=3))
new_seq

# vectors can have character
names = c("Elias", "Mahfuza", "Ashraf", "Chaitali")
names
class(names)
names[2]
names[2:4]

# when we use range in sequence, we use colon (:)
# using first or second bracket in place of third bracket will give wrong result
# if we expect data out of range, it will say NA 

names[3:4]
names[10]
names{10}

# Assigning names to vector values
my_values = c(4, 7, 9, 11)
names(my_values) = c("a", "b", "c", "d")
names(my_values)

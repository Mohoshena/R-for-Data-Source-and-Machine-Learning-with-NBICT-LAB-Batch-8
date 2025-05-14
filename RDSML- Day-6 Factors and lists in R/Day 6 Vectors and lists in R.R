# Factors in R

# Summary of numeric items
participants_age = c(78, 25, 68, 45, 48, 36)
summary(participants_age)

# finding summary of characters
profession = c("Doctor", "Teacher", "Teacher", "Businessman", "Teacher")
summary(profession)

profession = factor(profession)
summary(profession)

# Putting the summary in order
birth_month = c("Jan", "Apr", "Mar", "Dec", "Jan", "Apr", "Aug", "Sep", "Mar")
summary(birth_month)

birth_month_fact = factor(birth_month)
summary(birth_month_fact)
birth_month_fact = factor(birth_month, 
                          ordered = TRUE, 
                          levels = c("Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "sep", "Oct", "Nov", "Dec"))
birth_month_fact

# Lists in R
# Lists are used to place number of items in a bundle

a = c(2, 4, 7)
b = c("Red", "Green", "Blue")
c = "welcome"

my_list = list(a, b, c)

my_list

# Naming the list items
my_list = list(pieces = a, colors = b, Message = c)
my_list

# calling a specific data structure 
#need to use third bracket
my_list[1]
my_list[2]
my_list['colors']
my_list$colors

# Calling specific items from the data structure
my_list$colors[1]
my_list$colors[2]
my_list$colors[3]
my_list$colors[4]

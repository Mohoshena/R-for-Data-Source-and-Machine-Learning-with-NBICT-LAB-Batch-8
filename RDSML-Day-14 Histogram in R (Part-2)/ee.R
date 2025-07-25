# Importing the dataset
dataset = read.csv("data.csv")

# Importing the library
library(ggplot2)

# Creating the basic histogram
ggplot(dataset, aes(x = weight)) +
  geom_histogram(color = "white")

# Changing histogram plot line colors by groups
ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = .5, position = "identity")

# We can change the position adjustment 
# to use for overlapping points on the layer.
# Possible values for the argument position are 
# "identity", "stack", "dodge". Default value is "stack".

# Interleaved histograms
ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = .5, position = "dodge") +
  theme(legend.position = "top")

# The plyr package is used to calculate 
# the mean weight of each group.

# install.packages("plyr")
library(plyr)
group_means = ddply(dataset, "sex", summarise, grp.mean = mean(weight))
group_means

# Adding mean lines
myPlot = ggplot(dataset, aes(x = weight, fill = sex)) +
  geom_histogram(color = "white", alpha = .5, position = "dodge") +
  geom_vline(data = group_means, aes(xintercept = grp.mean, color = sex), 
             linetype = "dashed") +Add commentMore actions
theme(legend.position = "top")

myPlot

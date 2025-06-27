# Importing data the dataset
dataset = read.csv("data.csv")

# Importing the library
library(ggplot2)

#creating tghe basic histogram
ggplot(dataset, aes(x=weight))+
  geom_histogram("color=white")
















# The plyr packages is used to calculate
# the mean weight of each group
install.packages('plyr')
library(plyr)
group_means=ddply(dataset, "sex", summarize, grp.mean= mean(weight))

#Adding mean line





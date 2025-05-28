# Installing and loading ggplot2
# install.packages("ggplot2")
library(ggplot2)

dataset = mtcars

# Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y=mpg))+
geom_point(size=2, shape=9)

# geom_point is used to change or
# modify the scatter plot size and shape

# Adding the regression line
ggplot(dataset, aes(x = wt, y=mpg))+
  geom_point(size=2, shape=9)
geom_smooth()



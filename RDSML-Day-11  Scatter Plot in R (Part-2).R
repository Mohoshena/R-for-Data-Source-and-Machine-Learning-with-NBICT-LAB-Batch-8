# install.packages("ggplot2")
library(ggplot2)

dataset = mtcars

# Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point()

# Changing the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18)

# Adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) +
geom_point(size=1, shape=18) +
  geom_smooth(method = lm)
geom_smooth(method = lm)

# Removing the confident interval
ggplot(dataset, aes(x=wt, y=mpg)) +
geom_point() +  
geom_smooth(method = lm, se = FALSE)  

# Loess method
ggplot(dataset, aes(x=wt, y=mpg)) +
  geom_point() +  
  geom_smooth()

# Change the line type and color
ggplot(dataset, aes(x = wt, y = mpg)) +
geom_point(size=1, shape=18) +
  geom_smooth(method = lm)
geom_smooth(method = lm, linetype = "dashed",
            color="darkblue")
geom_smooth(method = lm, linetype = "dotted",
            color="darkblue")

# Changing the confidence interval color
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=3, shape=18, color = "blue") +
  geom_smooth(method = lm)
geom_smooth(method = lm, linetype = "dashed",
            color="darkred", fill= "blue")
# Scatter plot with multiple groups

dataset$cyl
# Converting the cyl colunm from a numeric to factor variable
dataset$cyl = as.factor(dataset$cyl)

# Changing the point shapes by the levels of cyl
ggplot(dataset, aes(x= wt, y=mpg, shape= cyl))+
 geom_point()        

# Changing the point shapes and colors
ggplot(dataset, aes(x= wt, y=mpg, shape= cyl, color= cyl))+
  geom_point() 

ggplot(dataset, aes(x= wt, y=mpg, shape= cyl, color= cyl, size=cyl,))+
  geom_point() 

library(ggplot2)
dataset=mtcars

# Converting cyl column froma numeric to a factor variable
dataset$cyl = as.factor(dataset$cyl)

# Adding regression lines based on multiple groups
ggplot(dataset, aes(x=wt, y= mpg, color=cyl))+
  geom_point()+
geom_smooth(method= lm)  
geom_smooth(method= lm, se=FALSE) 

# Removing the regression lines based on multiple groups
ggplot(dataset, aes(x=wt, y= mpg, color=cyl, shape=cyl))+
  geom_point()+
  geom_smooth(method= lm)  
geom_smooth(method= lm, se=FALSE) 

# Extending the regression lines
ggplot(dataset, aes(x=wt, y= mpg, color=cyl, shape=cyl))+
  geom_point()+
geom_smooth(method= lm, se=FALSE, fullrange=TRUE) 

# Filling the color of confidence bands
ggplot(dataset, aes(x=wt, y= mpg, color=cyl, shape=cyl))+
  geom_point()+
geom_smooth(method= lm, ase=fullrange) 

# Changing point shapes manually

ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape=cyl))+
geom_point()+
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE)+
  scale_shape_manual(values=c(3,16,17))+
  theme(legend.position = "top")

# Changing point colors manually

dataset=data.frame(dose=c("D0.5", "D1", "D2"),
                   len=c(4.2, 10, 29.5))
write.csv(dataset, "my_data.csv")

library(ggplot2)
#basic barplot
ggplot(data= dataset, aes(x=dose, y=len))+
  geom_bar(stat="identity")

# Horizontal barplot
ggplot(data= dataset, aes(x=dose, y=len))+
  geom_bar(stat="identity")
coord_flip()

# changing the width of bars
ggplot(data= dataset, aes(x=dose, y=len))+
  geom_bar(stat="identity", width=0.7)

# changing the colors of bars
ggplot(data= dataset, aes(x=dose, y=len))+
  geom_bar(stat="identity",color="blue",fill="purple", width=0.7)

# Minimal theme + blue fill color
ggplot(data= dataset, aes(x=dose, y=len))+
  geom_bar(stat="identity",fill="steelblue", width=0.7)

#Bar plot with labels
#Outside bars
ggplot(data= dataset, aes(x=dose, y=len))+
  geom_bar(stat="identity",fill="steelblue")+
geom_text(aes(label=len), vjust=-0.5, size=3, color"#9f9f9f")+
theme_minimal()
#Inside bars
ggplot(data= dataset, aes(x=dose, y=len))+
  geom_bar(stat="identity",fill="steelblue")+
  geom_text(aes(label=len), vjust=1.5, size=3, color"white")+
  theme_minimal()

myCarsData= mtcars
#Barplot of counts
# To make a barplot of counts, we will use mtcars dataset
ggplot(data=myCarsData, aes=(x=factor(cyl)))+
  geom_bar(stat="count")



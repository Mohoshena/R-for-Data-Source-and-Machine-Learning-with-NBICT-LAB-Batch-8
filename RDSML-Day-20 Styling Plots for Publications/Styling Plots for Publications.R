# Installing the necessary packages
# Styling Plots for Publications
# Installing the library(ggplot2) packages
library(ggplot2)
# Installing the library("ggthemes") packages
library("ggthemes")
# Installing the library(viridis) packages

library(viridis)

# Sample data loading
df=mtcars
df$cyl=as.factor(df$cyl)

# Styling plot
p= ggplot(df, aes(x=wt, y=mpg, color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="cylinders")+
  labs(
    title="Fuel efficiency by car weight",
    x="weight (1000 lbs)",
    y="Miles per Gallon"
  )+
  theme_classic(base_size = 14, base_family="serif")+
  theme(plot.title = element_text(face="bold", size=16, hjust = 0.5),
        axis.title = element_text(face="bold", size=14),
        axis.text = element_text(size=12),
        legend.position = "right",
        legend.title = element_text(face="bold"),
        legend.text = element_text(size=12)
        )

# Save the plot for publication
ggsave("Publication_ggplot.png", p,width=6, height=4, dpi=300)
ggsave("publication_ggplot.png", p, width = 6, height = 4, dpi = 300)

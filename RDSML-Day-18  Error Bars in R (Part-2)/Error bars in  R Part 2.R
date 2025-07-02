ToothGrowth = ToothGrowth
data_summary <- function(data, varname, groupnames){
  require(dplyr)
  summary_func <- function(x, col){
    c(mean = mean(x[[col]], na.rm=TRUE),
      sd = sd(x[[col]], na.rm=TRUE))
  }
  data_sum <- ddply(data, groupnames, .fun=summary_func, varname)
  data_sum <- rename(data_sum, c("mean" = varname))
  return(data_sum)
}
d_summary <- data_summary(ToothGrowth, varname="len",
                          groupnames=c("supp", "dose"))
ToothGrowth = ToothGrowth
data_summary <- function(data, varname, groupnames){
  require(dplyr)
  summary_func <- function(x, col){
    c(mean = mean(x[[col]], na.rm=TRUE),
      sd = sd(x[[col]], na.rm=TRUE))
  }
  data_sum <- ddply(data, groupnames, .fun=summary_func, varname)
  data_sum <- rename(data_sum, c("mean" = varname))
  return(data_sum)
}
d_summary <- data_summary(ToothGrowth, varname="len",
                          groupnames=c("supp", "dose"))
ToothGrowth = ToothGrowth
data_summary <- function(data, varname, groupnames){
  require(plyr)
  summary_func <- function(x, col){
    c(mean = mean(x[[col]], na.rm=TRUE),
      sd = sd(x[[col]], na.rm=TRUE))
  }
  data_sum <- ddply(data, groupnames, .fun=summary_func, varname)
  data_sum <- rename(data_sum, c("mean" = varname))
  return(data_sum)
}
d_summary <- data_summary(ToothGrowth, varname="len",
                          groupnames=c("supp", "dose"))
# Convert dose to a factor variable
d_summary$dose=as.factor(d_summary$dose)
head(d_summary)
# Standard deviation of the mean as error bar
ggplot(d_summary, aes(x=dose, y=len, fill=supp)) +
  geom_bar(stat="identity", position=position_dodge()) +
  geom_errorbar(aes(ymin=len-sd, ymax=len+sd), width=.2, position=position_dodge(.9)) +
  scale_fill_brewer(palette="Paired") +
  theme_minimal()
library(ggplot2)
ToothGrowth = ToothGrowth
data_summary <- function(data, varname, groupnames){
  require(plyr)
  summary_func <- function(x, col){
    c(mean = mean(x[[col]], na.rm=TRUE),
      sd = sd(x[[col]], na.rm=TRUE))
  }
  data_sum <- ddply(data, groupnames, .fun=summary_func, varname)
  data_sum <- rename(data_sum, c("mean" = varname))
  return(data_sum)
}
d_summary <- data_summary(ToothGrowth, varname="len",
                          groupnames=c("supp", "dose"))
# Convert dose to a factor variable
d_summary$dose=as.factor(d_summary$dose)
head(d_summary)
library(ggplot2)
# Standard deviation of the mean as error bar
ggplot(d_summary, aes(x=dose, y=len, fill=supp)) +
  geom_bar(stat="identity", position=position_dodge()) +
  geom_errorbar(aes(ymin=len-sd, ymax=len+sd), width=.2, position=position_dodge(.9)) +
  scale_fill_brewer(palette="Paired") +
  theme_minimal()
setwd("C:/Users/Sadhan Verma/OneDrive/1. Classworks/R-for-Data-Science-and-Machine-Learning-with-NBICT-LAB-Batch-8/RDSML-Day-17 👉 Error Bars in R (Part-1)")
ToothGrowth
tooth_data = ToothGrowth
View(tooth_data)
add_values <- function(a, b) {
  result <- a + b
  return(result)
}
add_values(23, 25)
data_summary = function(data, varname, groupnames){
  require(plyr)
  summary_func = function(x, col){
    c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))
  }
  data_sum = ddply(data, groupnames, .fun = summary_func, varname)
  data_sum = rename(data_sum, c("mean" = varname))
  return(data_sum)
}
d_summary = data_summary(tooth_data, varname = "len", groupnames = c("supp", "dose"))Add commentMore actions
View(d_summary)
d <- read.csv(file = "/Users/sakshishetty/Downloads/housing_data.csv")

#QUESTION_1
sapply(d, class)
c <- cor(d[c("id","price","bathrooms","floors","lat","long")])
print(c)
library(corrplot)
corrplot(c,method="shade")
#--

#QUESTION_2
#A correlation of 0.8 seems high enough to drop values.
high <- within(d,rm(bathrooms))  #price and bathrooms have high correlation
print(high)
#--

#QUESTION_3
library(plotly)
p1 <- plot_ly(d,x=~sqft_above,y=~sqft_living,trace="scatter")
print(p1)
#--

#QUESTION_4
p2 <- plot_ly(d, x=~grade,type="box") #vertical
print(p2)
p3 <- plot_ly(d, y=~grade,type="box") #horizontal
print(p3)
#Median is closer to the left end and there are greater number of values on the right of the median. 
#Hence, this boxplot shows right skewness.

newdata <- read.csv(file="/Users/sakshishetty/Downloads/insurance.csv")

#QUESTION_1
x<-contrasts(newdata$smoker)
print(x)
y<-contrasts(newdata$region)
print(y)
t <- sample(floor(nrow(newdata)*0.8))
train <- newdata[t,]
print(train)
test <- newdata[-t,]
print(test)

#QUESTION_2
library(plotly)
pl <- boxplot(newdata$charges~newdata$smoker)
print(pl)
#Charges are lesser for non-smokers.

#QUESTION_3
sapply(newdata, class)
cr <- cor(newdata[c("age","bmi","children","charges")])
print(cr)
#Age and charges have the highest correlation value.
reg <- lm(formula=charges~age, data = train)
summary(reg)
plot(reg)
k <- predict(reg,newdata=test)
rms <- rmse(dataset$charges,k)

#QUESTION_4
#4_1
reglm = lm(charges~age, data=newdata)
cod <- summary(reglm)$r.squared
print(cod)
#4_2 (not at all sure about this one)
h <- resid(reglm)
plot(newdata$charges,h)


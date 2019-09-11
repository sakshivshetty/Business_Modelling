data <- read.csv(file="/Users/sakshishetty/Documents/IO/Iris.csv")

#QUESTION_1
d <- iris
library(class)
dnorm <- scale(iris[,-5])
set.seed(1234)
s <- sample(2,nrow(d), replace=TRUE, prob = c(0.8,0.2))
train <- d[s==1,]
test <- d[s==2,]
k <- knn(train[,-5], test[,-5],train$Species, k=3, prob=TRUE)
print(k)
table(test$Species, k)
sum(k==test$Species)/length(test$Species)*100

#QUESTION_2
print(data)
i<- iris[,c(1,2,3,4)]
print(i)
i.class<- iris[,"Species"]   #species removed, saving this for later use in the table
print(i.class)
normalize <- function(x){return ((x-min(x))/(max(x)-min(x)))}
i$Sepal.Length<- normalize(i$Sepal.Length)
i$Sepal.Width<- normalize(i$Sepal.Width)
i$Petal.Length<- normalize(i$Petal.Length)
i$Petal.Width<- normalize(i$Petal.Width)
print(i)
#there are three classes: setosa, versicolor and virginica
km<- kmeans(i,3)
print(km$size)
print(km$cluster)
table(km$cluster,i.class)

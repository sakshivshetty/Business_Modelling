data <- read.csv(file="/Users/sakshishetty/Downloads/graduate_admissions.csv")

#QUESTION_2
i <- which(data$CGPA>=7.50 & data$Research == 1) 
print(length(i))
k <- which(data$CGPA<7.5 & data$Research == 1)
print(length(k))

#QUESTION_3
r <- order(data$Chance.of.Admit)
print(r)
print(r[1:5])

#QUESTION_4
library(scales)
re <- rescale(data$University, to = c(1,10))
print(re)

#QUESTION_1a
colSums(is.na(mydata))

#QUESTION_1b
mydata <- read.csv(file="/Users/sakshishetty/Downloads/graduate_admissions_missing.csv")
#1-Mean
mydata$TOEFL.Score[is.na(mydata$TOEFL.Score)] <- mean(mydata$TOEFL.Score, na.rm=TRUE)
l <- mydata$TOEFL.Score
print(l)
#2-Median
mydata$TOEFL.Score[is.na(mydata$TOEFL.Score)] <- median(mydata$TOEFL.Score, na.rm=TRUE)
m <- mydata$TOEFL.Score
print(m)
#3-RMS
library(Metrics)
n <- rmse(mydata$TOEFL.Score,m)
print(n)


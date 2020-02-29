library(plyr)
library(animation)

x <- runif(50)
y <- runif(50)
 
data <- cbind(x,y)
plot(data)

km <-kmeans(data,4)

km <- kmeans.ani(data,4)

fit <- kmeans(data,4)
mydata <- data.frame(data, fit$cluster)
wss <- c()


#for different K values
for(i in 2:15) wss[i] <-sum(kmeans(data,centers = i)$withinss)
plot(1:15,wss, type='b', xlab="No. of clusters", ylab="average diastance")

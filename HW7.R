#P1
#Training
train <- read.csv("HW07Train.csv", header = TRUE)
train
train <- train[c("Previously_Visited", "SessionLength", "PageViews", "Will_Visit_Again")]
train
train$Previously_Visited <- factor(train$Previously_Visited, levels = c("No", "Yes"))
train$SessionLength <- factor(train$SessionLength, levels = c("Average","Long", "Short"))
train$PageViews <- factor(train$PageViews, levels = c("High", "Low", "Medium"))

#Testing
test <- read.csv("HW07Test.csv", header = TRUE)
test
test <- test[c("Previously_Visited", "SessionLength", "PageViews")]
test
test$Previously_Visited <- factor(test$Previously_Visited, levels = c("No", "Yes"))
test$SessionLength <- factor(test$SessionLength, levels = c("Average","Long", "Short"))
test$PageViews <- factor(test$PageViews, levels = c("High", "Low", "Medium"))

#Predicting
library(e1071)
classifier <- naiveBayes(train, train$Will_Visit_Again)
predictions <- predict(classifier,test,type="raw")

predictions
                                   

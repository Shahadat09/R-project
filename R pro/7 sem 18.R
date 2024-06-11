dataset<-read.csv('Social1.csv')
View(dataset)
dataset=dataset[3:5]
 
dataset$Purchased=factor(dataset$Purchased, levels =c(0, 1))
library(caTools)
set.seed(123)
split<-sample.split(dataset$Purchased, SplitRatio=0.75)
training_set<-subset(dataset, split==TRUE)
test_set=subset(dataset, split==FALSE)

#Feature Scaling
training_set[-3]= scale(training_set[-3])
test_set[-3]=scale(test_set[-3])

install.packages('randomForest')
library(randomForest)
set.seed(123)

classifier<-randomForest(x = training_set[-3],
                         y =training_set$purchased,
                         ntree =500)

# print(classifier)
#predicting the test setresults
 y_pred= predict(classifier, newdata =test_set[-3])
 
data(iris)
View(iris)

str(iris)

install.packages("caTools")

library(e1071)
library(caTools)

split=sample.split(iris,SplitRatio = 0.7)

train_cl=subset(iris,split="TRUE")
train_cl
test_cl=subset(iris,split="FALSE")
test_cl

train_scale=scale(train_cl[,1:4])
train_scale
test_scale=scale(test_cl[,1:4])

set.seed(120)
classifier_cl=naiveBayes(train_scale,train_cl[5])

y_pred=predict(classifier_cl,newdata = test_scale)

cm=table(test_cl$Species,y_pred)
cm
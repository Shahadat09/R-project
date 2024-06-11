data("iris")
str(iris)
View(iris)
dataset<-data("iris")
table(iris$Species)
summary(iris)
round(prop.table(table(iris$Species))*100,digits=1)
is.na(iris)

normalize<-function(x){
  num<-x -min(x)
  denom<-max(x)-min(x)
  return (num/denom)
}
iris_norm<-as.data.frame(lapply(iris[1:4],normalize))
summary(iris_norm)

set.seed(1234)
ind<-sample(2,nrow(iris),replace=TRUE,prob=c(0.70,0.30))
ind

table(ind)
prop.table(table(ind))
round(prop.table(table(ind))*100,digits=1)
iris.training<-iris[ind==1, 1:4]
iris.training

iris.test<-iris[ind==2,1:4]
iris.test
iris.trainLabels <-iris[ind==1, 5]
iris.trainLabels
iris.testLabels<-iris[ind==2, 5]
iris.testLabels

library(class)
iris_pred<-knn(train= iris.training, test= iris.test, cl= iris.trainLabels, k=3)

library(gmodels)
CrossTable(x =iris.testLabels, y=iris_pred, prop.chisq = FALSE)

tab<-table(iris_pred,iris.testLabels)
tab

accuracy <-((sum(diag(tab)))/sum(tab))*100

install.packages("caret")



dataset=read.csv('Position_salaries.csv')
View(dataset)
dataset=dataset[2:3]
View(dataset)

lin_reg<-lm(formula=Salary~.,
            data =dataset)
lin_reg

#Fitting Polynomial Regression to the dataset
dataset$Level2<-dataset$Level^2
dataset$Level3<-dataset$Level^3
dataset$Level4<-dataset$Level^4

poly_reg=lm(formula=Salary~ .,
            data =dataset)
View(dataset)
library(ggplot2)
ggplot() +
  geom_point(aes(x =dataset$Level, y=dataset$Salary),
             colour='red')+
  geom_line(aes(x =dataset$Level,
                y = predict(lin_reg, newdata =dataset)),
            colour='blue')+  
ggtitle('Truth or Bluff(Linear regression)')+
xlab('Level')
ylab('Salary')

predict(lin_reg, data.frame(Level =6.5))
predict(poly_reg,data.frame(Level =6.5,
                            Level2=6.5^2,
                            Level3=6.5^3,
                            Level4=6.5^4))


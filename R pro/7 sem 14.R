data("cars")
View(cars)


lin_reg<-lm(formula=dist~.,
            data =cars)
lin_reg

library(ggplot2)
ggplot() +
  geom_point(aes(x =cars$speed, y=cars$dist),
             colour='red')+
  geom_line(aes(x =cars$speed,
                y = predict(lin_reg, newdata =cars)),
            colour='blue')+  
  ggtitle('cars dataset (Linear regression)')+
  xlab('speed')
ylab('Distance')

poly_reg=lm(formula=dist~ .,
            data =cars)
poly_reg


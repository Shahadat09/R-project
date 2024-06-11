x<-c(5.1, 5.5 ,5.8 ,6.1, 6.4, 6.7, 6.4, 6.1)

y<-c(63, 66, 67, 72, 78, 85, 92, 99)

relation <- lm(y~x)

summary(relation)

a<- data.frame(x=6.3)

result<-predict(relation, a)
print(result)

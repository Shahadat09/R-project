dataset =read.csv('Salary_Data.csv')
View(dataset)
#Splitting the dataset into the Training set and test set 
install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(dataset$Salary, SplitRatio=2/3)
training_set =subset(dataset, split ==TRUE)
test_set= subset(dataset, split ==FALSE)

regressor =lm(formula =Salary ~ YearsExperience,
              data = training_set)

#Predicting the Test set results
y_pred =predict(regressor, newdata = test_set)

#to visualise the training subset using scatterplot

plot(x=training_set$YearsExperience, y=training_set$Salary,
     main ="Scatteplot of years of Experience vs. Salary",
     xlab ="Years of Experience",
     ylab ="Salary")
#Viusalising the training set results

library(ggplot2)
ggplot()+
geom_point(aes(x =training_set$YearsExperience, y=training_set$Salary),
           colour='red')+
geom_line(aes(x =training_set$YearsExperience,
              y = predict(regressor, newdata =training_set)),
          colour='blue')+  
ggtitle('Salary vs Experience(Training set)')+
  xlab('Years of Experience ')
ylab('Salary')


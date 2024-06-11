dataset<-read.csv("Sales.csv")
View(dataset)
str(dataset)

names(dataset)
is.na(dataset)
sum(is.na(dataset))

dataset[1,]

missingdata<-dataset[!complete.cases(dataset),]
missingdata
View(dataset)
colSums(is.na(dataset))

dataset1<-na.omit(dataset)# to remove the categorical data
View(dataset1)

#dataset$Sales<-ifelse(is.na(dataset$Sales),
                     # ave(dataset$Sales, FUN= function(x) mean(x,na.rm=TRUE)),
                      #dataset$Sales)
dataset$Sales[is.na(dataset$Sales)]<-mean(dataset$Sales, na.rm = TRUE)

#Replace the missing values with the mean value of each variable.
dataset$Sales[is.na(dataset$Sales)] <-mean(dataset$Sales, na.rm =TRUE)
dataset$Profit[is.na(dataset$Profit)] <-mean(dataset$Profit, na.rm=TRUE)
dataset$Unit.Price[is.naa(dataset$Unit.Price)] <-mean(dataset$Unit.Price, na.rm=TRUE)
summary(dataset)

dataset<-read.csv("Sales.csv")
#Replacing the missing values for numerical variables;

dataset$Sales[is.na(dataset$Sales)] <-runif(n = sum(is.na(dataset$Sales)),
                                            min = min(dataset$Sales, na.rm =TRUE),
                                            max= max(dataset$Sales, na.rm=TRUE))
dataset$Profit[is.na(dataset$Profit)] <-runif(n = sum(is.na(dataset$Profit)),
                                            min = min(dataset$Profit, na.rm =TRUE),
                                            max= max(dataset$Profit, na.rm=TRUE))
dataset$Price[is.na(dataset$Price)] <-runif(n = sum(is.na(dataset$Price)),
                                            min = min(dataset$Price, na.rm =TRUE),
                                            max= max(dataset$Price, na.rm=TRUE))

#missing values for variable Order.priority ,ship mode and Customer.Name

#Missing values for categorical variables by random value from each variable;
dataset$Order.Priority[is.na(dataset$Order.Priority)]<- sample(levels(dataset$Order.Priority),
                                                            size= sum(is.na(dataset$Order.Priority)),
                                                            replace =TRUE)



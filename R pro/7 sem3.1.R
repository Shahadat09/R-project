getwd()
file<-read.csv("data.csv")
View(file)# to view the data
str(file)# to know the structure of data

#labelling the variables
names(file)# to know the column names

names(file)<-c("Country","Age","Salary")# to change the column  name

str(file)
View(file)

is.na(file)# to check the na value it shows true when na value present
sum(is.na(file))# to know the how many na present in it
View(file)
colSums(is.na(file))

file[1,]# to check the first row
 missingdata<-file[!complete.cases(file), ]
 missingdata
 
 View(file)

file$Age=ifelse(is.na(file$Age),
                ave(file$Age, FUN= function(x) mean(x,na.rm=TRUE)),
                file$Age)

file$Salary=ifelse(is.na(file$Salary),
                ave(file$Salary, FUN= function(x) mean(x,na.rm=TRUE)),
                file$Salary)

sum(is.na(file))

str(file)

#handling the categorical value

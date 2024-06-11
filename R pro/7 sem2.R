usedcars<-read.csv("usedcars.csv",stringsAsFactors = FALSE)
str(usedcars)# we use str to know the variable and what typ of value present in the data
summary(usedcars$year)# to know the mean ,median ,average we use summary 
summary(usedcars[c("price","mileage")])

range(usedcars$price)# to know the min and max value we use range function

diff(range(usedcars$price))

quantile(usedcars$price,seq(from =0,to =1, by =0.20))#to know the value on the basis of given %

table(usedcars$year)#we use table function to know that the how many time variable accurance in data

table(usedcars$model)

table(usedcars$color)

model_table<-table(usedcars$model)
prop.table(model_table)#prop function is used to find the proportion of value between them

color_pct<-table(usedcars$color)
color_pct<-prop.table(color_pct)*100# to find the percentage
round(color_pct,digits=1)#to fixed the value after decimal



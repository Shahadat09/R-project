print("hello")
a<-5
b<-8;
c<-a+b
print(c)
num<-c(2,4,6,8,3)
num[c(-2,-4)]
string<-c("Good Morning","Mr Jahangir")
string[2:3]

temperature<-c(2,4,6)
temperature[c(TRUE,TRUE,FALSE)]
numbers<-1:10
numbers

shadId<-c(1,5,8,9)
shadName<-c("Arhan","Farru","Sallu","saif")
shadlist=list(shadId,shadName)
print(shadlist)

patient<-list(fullname= "Shaquib botu",
              temperature=98.6,
              flu_status ="True",
              gender="Male",
              blood='o')
patient
patient[2]
patient$gender
patient[c(2,4)]

thislist<-list("apple","banana","cherry")
"apple"%in% thislist

#to append
append(thislist,"orange")
thislist
new<-append(thislist,"orange")
#add at a location
new<-append(thislist,"orange",after =2)

#to remove
thislist[-1]
neww<-thislist[-1]

data<-c("Amir","Asif","Owais","Shaquib","Salim","Rahul","Ravi","Pintu")
factor_data<-factor(data)

blood<-factor(c("h","AB","A"),levels=c("A","B","AB","O"))
blood[1:2]
levels(blood)
length(blood)
blood[1:2]

#data frame we use data.frame to create this 
dataframe<-data.frame(name=c("john","Marry","Hyka"),
                      age=c(20,21,24),
                      course =c("cse","ece","eee"),
                      stringAsFactors ="FALSE")
dataframe
dataframe[2,2:3]
dataframe[2:3,2:3]


thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
thismatrix

M<-matrix(c(3:14),nrow=4, byrow=TRUE)
print(M)

#Define the column and row names.
rownames =c("row1","row2","row3","row4")
colnames =c("col1","col2","col3")

p<-matrix(c(3:14),nrow=4,byrow=TRUE, dimnames=list(rownames,colnames))
print(p)

#Array
thisarray <- c(1:24)
thisarray

vector1<-c(5,9,3)
vector2<-c(10,11,12,13,14,15)
column.names<-c("col1","col2","col3")
row.names<-c("ROW1","ROW2","ROW3")
matrix.names<-c("Matrix1","Matrix2")
result<-array(c(vector1,vector2),dim=c(3,3,2),dimnames=list(row.names,column.names,matrix.names))
print(result)
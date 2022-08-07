##  Retail Project

library(dplyr)
library(ggplot2)
library(readxl)

df=read_excel(file.choose())

head(df)
str(df)
dim(df)
summary(df)
glimpse(df)

##Problem 1

df$Recommendation=as.factor(df$Recommendation)

model1=glm(Recommendation~.,data=df,family="binomial")
print(summary(model1))

### Variables having * are contribute for Recommendation
### Variables having . somewhat contribute for Recommendations
### variables do not have anything do not contribute for recommendation

##Problem 2

df1=read_excel(file.choose())

head(df1)

dim(df1)

glimpse(df1)

is.na(df1)
df1[is.na(df1)==TRUE]

df2=na.omit(df1)
head(df2)

write.csv(df2,"df2.csv")
getwd()

colnames(df2)
colnames(df2)=c("Dress_ID","29/8/2013",	"31/8/2013",	"09-02-2013",	"09-04-2013",	"09-06-2013",	"09-08-2013",	"09-10-2013",	"09-12-2013",	"14/9/2013",	"16/9/2013",	"18/9/2013",	"20/9/2013",	"22/9/2013",	"24/9/2013",	"26/9/2013",	"28/9/2013",	"30/9/2013",	"10-02-2013",	"10-04-2013",	"10-06-2013",	"10-08-2010",	"10-10-2013",	"10-12-2013")

colnames(df2)

format(colnames(df2),format="%d/%m/%Y")

head(df2)

next_three_alternative_dates_sales=ts(df2,start=c(2013,10,12),frequency = 3)

next_three_alternative_dates_sales

## Problem 3

head(df)

str(df)


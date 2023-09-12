

# Module 5: Assignment 8 – Simple Linear Regression

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
# train and test sets, now the corporation wants you to train the simple linear regression 
# model. 

# Tasks to be performed:
     library(caTools)
# 1. After splitting the data frame into train and test sets, build a simple linear model on 
#    top of the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature as the independent variable and Month 
#    as the dependent variable. 
     sample.split(temperature$Month,SplitRatio = .70)->split_tag1
     train1<-subset(temperature,split_tag1==T)
     test1<-subset(temperature,split_tag1==F)
     
     lm(data=train1,Month~AvgTemperature)->Model1
     predict(Model1,test1)->pred1
     View(pred1)
     pred1
     

# 2. After splitting the data frame into train and test sets, build a simple linear model on 
#    top of the train set for the Placement_Data_Full_Class data frame. 
# a. For this model, take mba_p as the independent variable and etest_p as 
#    dependent variable. 
     sample.split(placement$etest_p,SplitRatio = .70)->split_tag2
     train2<-subset(placement,split_tag2==T)
     test2<-subset(placement,split_tag2==F)
     
     lm(data=train2,etest_p~mba_p)->Model2
     predict(Model2,test2)->pred2
     View(pred2)
     pred2

# 3. After splitting the data frame into train and test sets, build a simple linear model on 
#    top of the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take DrugId as independent variable and Age as dependent 
#    variable. 
     sample.split(pharma$Age,SplitRatio = .70)->split_tag3
     train3<-subset(pharma,split_tag3==T)
     test3<-subset(pharma,split_tag3==F)
     
     lm(data = train3,Age~DrugID)->Model3
     predict(Model3,newdata = test3)->pred3
     pred3
     
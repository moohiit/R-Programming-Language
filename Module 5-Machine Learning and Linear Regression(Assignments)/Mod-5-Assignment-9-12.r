

# Module 5: Assignment 9 – RMSE Score for Multi Linear Model

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After prediction of the multi 
# linear model, now the corporation wants you to find out the accuracy of the model. 

# Tasks to be performed:
     read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\city_temperature.csv",stringsAsFactors = T)->temperature
     read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->pharma
     read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->placement
     library(caTools)
# 1. After building the multi linear model on top of the train set for the city_temperature 
#    data frame, and finding the prediction values of the multimodel1 on top of the test 
#    dataset. 
     sample.split(temperature$Month,SplitRatio = 0.75)->split_tag
     train1=subset(temperature,split_tag==T)
     test1=subset(temperature,split_tag==F)
     
     #model1
     lm(AvgTemperature~Country+Year+Month,data = train1)->model1
     predict(model1,newdata=test1)->multimodel1
     
     as.data.frame(cbind(Actual=test1$AvgTemperature,Predicted=multimodel1))->dataset1
     View(dataset1)
     
    
     
# a. Now combine the error that you have calculated while predicting the values to 
#    the Result1 data frame. 
     Error1=dataset1$Actual - dataset1$Predicted
     cbind(dataset1,Error1)->result1
     View(result1)
     
     
# b. With the help of the error, find the RMSE value of that model. 
     sqrt(mean((result1$Error1)^2))->rmse1
     rmse1
# 2. After building the multi linear model on top of the train set for the 
#    Placement_Data_Full_Class data frame, and finding the prediction values of the 
#    multimodel2 on top of the test dataset. 
     sample.split(placement$etest_p,SplitRatio = 0.75)->split_tag2
     train2=subset(placement,split_tag2==T)
     test2=subset(placement,split_tag2==F)
     
     #model1
     lm(etest_p~ssc_p+hsc_p+degree_p+mba_p,data = train2)->model2
     predict(model2,newdata=test2)->multimodel2
     
     as.data.frame(cbind(Actual=test2$etest_p,Predicted=multimodel2))->dataset2
     View(dataset2)
     

# a. Now combine the error that you have calculated while predicting the values to 
#    the Result2 data frame.
     Error2=dataset2$Actual - dataset2$Predicted
     result2=cbind(dataset2,Error2)
     View(result2)
# b. With the help of the error, find the RMSE value of that model. 
     sqrt(mean((result2$Error2)^2))->rmse2
     rmse2
# 3. After building the multi linear model on top of the train set for the 
#    Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
#    multimodel3 on top of the test dataset. 
     sample.split(pharma$Age,SplitRatio = 0.75)->split_tag3
     train3=subset(pharma,split_tag3==T)
     test3=subset(pharma,split_tag3==F)
     
     lm(Age~DrugID+Gender,data = train3)->model3
     predict(model3,test3)->multimodel3
     as.data.frame(cbind(Actual=test3$Age,Predicted=multimodel3))->result3
     

# a. Now combine the error that you have calculated while predicting the values to 
#    the Result3 data frame.
     Error3=result3$Actual - result3$Predicted
     cbind(result3,Error3)->result3
     View(result3)
     
# b. With the help of the error, find the RMSE value of that model.
     sqrt(mean((result3$Error3)^2))->rmse3
     rmse3
     
     
    #### Same as the Assignment 9 ####
     
# Module 5: Assignment 10 – RMSE Score
# Problem Statement:
#     You work in XYZ Corporation as a Machine Learning Engineer. After prediction of the simple 
# linear model, now the corporation wants you to find out the accuracy of the model. 
# Tasks to be performed:
#     1. After building the simple linear model on top of the train set for the city_temperature 
# data frame, and finding the prediction values of the model1 on top of the test dataset. 
# a. Now combine the error that you have calculated while predicting the values to 
# the Result1 data frame. 
# b. With the help of the error, find the RMSE value of that model. 
# 2. After building the simple linear model on top of the train set for the 
# Placement_Data_Full_Class data frame, and finding the prediction values of the 
# model2 on top of the test dataset. 
# a. Now combine the error that you have calculated while predicting the values to 
# the Result2 data frame. 
# b. With the help of the error, find the RMSE value of that model. 
# 3. After building the simple linear model on top of the train set for the 
# Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
# model3 on top of the test dataset. 
# a. Now combine the error that you have calculated while predicting the values to 
# the Result3 data frame. 
# b. With the help of the error, find the RMSE value of that model.

          ##$  same as the above  Assignment 9  $##
     
     
     

# Module 5: Assignment 11 – Assumptions

# Problem Statement:
#    You work in XYZ Corporation as a Machine Learning Engineer. After checking the model, 
#    now analyze the assumptions of the model.
     
# Tasks to be performed:
     library(ggplot2)
# 1. Analyze the features from the temperature dataset. 
     ggplot(data = temperature,aes(x=Month,y=AvgTemperature,col=Region))+geom_point()
     
     ggplot(data = temperature,aes(x=Year,y=AvgTemperature,col=Month))+geom_point()+xlim(1995,2020)
     
# 2. Analyze the features from the data dataset. 
     ggplot(data = pharma,aes(x=Gender,fill=DrugID))+geom_bar()
     
# 3. Analyze the features from the placement dataset.
     ggplot(data = placement,aes(x=ssc_p,y=salary,col=hsc_s))+geom_point()
     
     ggplot(data = placement,aes(x=ssc_p,y=etest_p,col=hsc_s))+geom_point()
     
     ggplot(data = placement,aes(x=mba_p,y=etest_p,col=hsc_s))+geom_point()
     
     ggplot(data = placement,aes(x=mba_p,y=salary,col=hsc_s))+geom_point()
     
     ggplot(data = placement,aes(x=salary,fill=hsc_s))+geom_histogram(bins = 20)
     
     
     
     
# Module 5: Assignment 12 – RSE & MRSE
# Problem Statement:
#     You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
# train and test sets, now the corporation wants you to analyze the multiple linear regression 
# model. 
# Tasks to be performed:
#     1. After splitting the data frame into train and test sets, build a simple linear model on 
# top of the train set for the city_temperature data frame. 
# a. For this model, take Country, Region, City, and AvgTemperature as the 
# independent variable and Month as the dependent variable. 
# b. Check the Residual Standard Error and Multiple R-Squared Error. 
     summary(model1)$r.squared
     summary(model1)
# 2. After splitting the data frame into train and test sets, build a simple linear model on 
# top of the train set for the Placement_Data_Full_Class data frame. 
# a. For this model, take degree_p, mba_p, and status as the independent variable 
# and etest_p as dependent variable. 
# b. Check the Residual Standard Error and Multiple R-Squared Error. 
     summary(model2)$r.squared
     summary(model2)
# 3. After splitting the data frame into train and test sets, build a simple linear model on 
# top of the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Issues, DrugId, and Gender as independent variable and 
# Age as dependent variable. 
# b. Check the Residual Standard Error and Multiple R-Squared Error. 
     summary(model3)$r.squared
     summary(model3)
     
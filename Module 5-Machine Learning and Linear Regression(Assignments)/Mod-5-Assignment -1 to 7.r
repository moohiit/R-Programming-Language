

# Module 5: Assignment 1 – Independent & Dependent Features.

#   Tasks to be performed:  

# 1. Load the city_temperature dataset .
# a. Find out the independent and dependent features from the data frame for model training.
temperature<-read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\city_temperature.csv",stringsAsFactors = T)

View(temperature)




# 2. Load the Placement_Data_Full_Class dataset. 
# a. Find out the independent and dependent features from the data frame for model training.  
placement<-read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\Placement_Data_Full_Class.csv",stringsAsFactors = T)

View(placement)


# 3. Load the Pharmacovigilance_audit_Data dataset. 
# a. Find out the independent and dependent features from the data frame for the model training.
pharma<-read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)
View(pharma)


# #Assignment 2: Splitting the Dataset

# 1. From the city_temperature dataset, split the data frame into train and test sets. 
# a. Split the dataset into 70:30 ratio by the dependent feature. 
library(caTools)
sample.split(temperature$Month,SplitRatio = 0.70)->split_temperature

train_temp<-subset(temperature,split_temperature==T)
test_temp<-subset(temperature,split_temperature==F)
nrow(train_temp)
nrow(test_temp)


# 2. From the Placement_Data_Full_Class, split the data frame into train and test sets. 
# a. Split the dataset into 80:20 ratio by the dependent feature. 
sample.split(placement$etest_p,SplitRatio = 0.80)->split_placement
train_plcmt<-subset(placement,split_placement==T)
test_plcmt<-subset(placement,split_placement==F)
nrow(train_plcmt)
nrow(test_plcmt)


# 3. From the Pharmacovigilance_audit_Data, split the data frame into train and test sets. 
# a. Split the dataset into 75:25 ratio by the dependent feature.
sample.split(pharma$Age,SplitRatio = 0.75)->split_pharma
train_pharma<-subset(pharma,split_pharma==T)
test_pharma<-subset(pharma,split_pharma==F)
nrow(train_pharma)
nrow(test_pharma)

#Module 5: Assignment 3 – Multiple Linear Regression  

# Tasks to be performed: 

# 1. After splitting the data frame into train and test sets, build a simple linear model on 
#    top of the train set for the city_temperature data frame. 
# a. For this model, take Country, Region, City, and AvgTemperature as the 
#    independent variable and Month as the dependent variable. 
lm(Month~Country+Region+City+AvgTemperature,data = train_temp)->model1
predict(model1,test_temp)->pred_month
View(pred_month)


# 2. After splitting the data frame into train and test sets, build a simple linear model on 
#    top of the train set for the Placement_Data_Full_Class data frame. 
# a. For this model, take degree_p, mba_p, and status as the independent variable 
#    and etest_p as dependent variable.
lm(etest_p~degree_p+mba_p+status,data = train_plcmt)->model2
predict(model2,test_plcmt)->pred_plcmt
pred_plcmt

# 3. After splitting the data frame into train and test sets, build a simple linear model on 
#    top of the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Issues, DrugId, and Gender as independent variable and 
#    Age as dependent variable
lm(Age~Issues+DrugID+Gender,data = train_pharma)->model3
predict(model3,test_pharma)->pred_pharma
pred_pharma


# Module 5: Assignment 4 – Adjusted R Squared & F Statistics

# Tasks to be performed:

# 1. After splitting the data frame into train and test sets, build a simple linear model 
#    on top of the train set for the city_temperature data frame. 
# a. For this model, take Country, Region, City, and AvgTemperature as the 
#    independent variable and Month as the dependent variable. 
     sample.split(temperature$Month,SplitRatio = 0.70)-split_temperature
     train_temp=subset(temperature,split_temperature==T)
     test_temp=subset(temperature,split_temperature==F)
     
     lm(Month~Country+Region+City+AvgTemperature,data = train_temp)->model1
     predict(model1,test_temp)->pred_temp

# b. Check the Adjusted R squared value and F statistics. 
     #Adjusted R Squared
     summary(model1)$adj.r.squared
     
     # F Statistics
     summary(model1)$f

# 2. After splitting the data frame into train and test sets, build a simple linear model 
#    on top of the train set for the Placement_Data_Full_Class data frame. 
     sample.split(placement$etest_p,SplitRatio = 0.80)->split_placement
     train_plcmt=subset(placement,split_placement==T)
     test_plcmt=subset(placement,split_placement==F)
# a. For this model, take degree_p, mba_p, and status as the independent 
#    variable and etest_p as dependent variable. 
     lm(data = train_plcmt,etest_p~degree_p+mba_p+status)->model2
     predict(model2,newdata = test_plcmt)->pred_plcmt

# b. Check the Adjusted R squared value and F statistics. 
     #Adjusted R Squared
     summary(model2)$adj.r.squared
     
     # F Statistics
     summary(model2)$f
# 3. After splitting the data frame into train and test sets, build a simple linear model 
#    on top of the train set for the Pharmacovigilance_audit_Data data frame. 
     sample.split(pharma$Age,SplitRatio = 0.75)->split_pharma
     subset(pharma,split_pharma==T)->train_pharma
     subset(pharma,split_pharma==F)->test_pharma

# a. For this model, take Issues, DrugId, and Gender as independent variable 
#    and Age as dependent variable.
     lm(data = train_pharma,Age~DrugID+Gender+Issues)->model3
     predict(model3,newdata = test_pharma)->pred_pharma

# b. Check the Adjusted R squared value and F statistics
     #Adjusted R Squared
     summary(model3)$adj.r.squared
     
     # F Statistics
     summary(model3)$f
     

     
### Module 5: Assignment 5 – Prediction for Simple Linear Model
     
     
# 1. After building a simple linear model on top of the train set for the city_temperature 
#    data frame, now find the prediction values of the model1 on top of the test dataset. 
     
# a. Now combine the actual values and predicted values of the model and store 
#    that combined data in a new data frame named ‘Result1’.
     result1=cbind(Actual=test_temp$Month,Predicted=pred_month)
     as.data.frame(result1)->result1
     
# b. Find out the errors in the predicted values.
     Error1= result1$Actual-result1$Predicted
     result1=cbind(result1, Error1)
     View(result1)
     
# 2. After building a simple linear model on top of the train set for the 
#    Placement_Data_Full_Class data frame, now find the prediction values of the model1 
#    on top of the test dataset. 
     
# a. Now combine the actual values and predicted values of the model and store 
#    that combined data in a new data frame named ‘Result2’
     result2=cbind(Actual=test_plcmt$etest_p,Predicted=pred_plcmt)
     as.data.frame(result2)->result2
     
# b. Find out the errors in the predicted values. 
     Error2=result2$Actual- result2$Predicted
     result2=cbind(result2,Error2)
     View(result2)
     
# 3. After building a simple linear model on top of the train set for the 
#    Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
#    model1 on top of the test dataset. 
     
# a. Now combine the actual values and predicted values of the model and store 
#    that combined data in a new data frame named ‘Result3’.
     result3=cbind(Actual=test_pharma$Age,Predicted=pred_pharma)
     as.data.frame(result3)->result3
     
# b. Find out the errors in the predicted values.
     Error3=result3$Actual- result3$Predicted
     result3=cbind(result3,Error3)     
     View(result3)     
     
     
     
     # Module 5: Assignment 6 – Prediction for Multi Linear Models
     
     # Tasks to be performed:
     # 1. After building a multi linear model on top of the train set for the city_temperature 
     #    data frame, now find the prediction values of the model1 on top of the test dataset. 
     
     # a. Now combine the actual values and predicted values of the model and store 
     #    that combined data in a new data frame named ‘MultiResult1’.
     
     # b. Find out the errors in the predicted values. 
     
     # 2. After building a multi linear model on top of the train set for the 
     #    Placement_Data_Full_Class data frame, now find the prediction values of the model2 
     #    on top of the test dataset. 
     
     # a. Now combine the actual values and predicted values of the model and store 
     #    that combined data in a new data frame named ‘MultiResult2’.
     
     # b. Find out the errors in the predicted values. 
     
     # 3. After building a multi linear model on top of the train set for the 
     #    Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
     #    model3 on top of the test dataset. 
     
     # a. Now combine the actual values and predicted values of the model and store 
     #    that combined data in a new data frame named ‘MultiResult3’.
     
     # b. Find out the errors in the predicted values.
     
     
     
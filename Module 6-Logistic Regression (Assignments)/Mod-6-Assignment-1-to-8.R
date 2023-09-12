

#Datasets:
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\customer_churn.csv", stringsAsFactors = T)->customer_churn
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\city_temperature.csv", stringsAsFactors = T)->temperature
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\Pharmacovigilance_audit_Data.csv", stringsAsFactors = T)->pharma
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\Placement_Data_Full_Class.csv", stringsAsFactors = T)->placement




# Module 6: Assignment 1 – Splitting the Data Frame

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After finding out the Dependent and 
#   Independent Features of the data frames, now the corporation wants you to split the datasets into train 
#   and test sets so that you can feed those data to the logistic model. 

# Tasks to be performed:
#   1. From the city_temperature dataset, split the data frame into train and test sets. 
#      a. Split the dataset into 70:30 ratio by the dependent feature.
          library(caTools)
          sample.split(temperature$Region,SplitRatio = 0.70)->split_temp
          temp_train<-subset(temperature,split_temp==T)
          temp_test<-subset(temperature,split_temp==F)
#   2. From the Customer_Churn, split the data frame into train and test sets. 
#      a. Split the dataset into 80:20 ratio by the dependent feature. 
          sample.split(temperature$Region,SplitRatio = 0.80)->split_churn
          churn_train<-subset(customer_churn,split_churn==T)
          churn_test<-subset(customer_churn,split_churn==F)
          
#   3. From the Pharmacovigilance_audit_Data, split the data frame into train and test sets. 
#      a. Split the dataset into 75:25 ratio by the dependent feature.
          sample.split(temperature$Region,SplitRatio = 0.80)->split_pharma
          pharma_train<-subset(pharma,split_pharma==T)
          pharma_test<-subset(pharma,split_pharma==F)
          



# Module 6: Assignment 2 – Simple Logistic Regression

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
#   train and test sets, now the corporation wants you to train the simple logistic regression 
#   model. 
# Tasks to be performed:
#   1. After splitting the data frame into train and test sets, build a simple logistic model on 
#      top of the train set for the city_temperature data frame. 
#      a. For this model, take AvgTemperature as the independent variable and Region 
#         as the dependent variable. 
          glm(Region~AvgTemperature,data = temp_train,family = 'binomial')->logmodel1
          summary(logmodel1)
          
#   2. After splitting the data frame into train and test sets, build a simple logistic model on 
#      top of the train set for the Customer_Churn data frame. 
#      a. For this model, take Monthly Charges as the independent variable and Churn 
#         as dependent variable. 
          glm(Churn~MonthlyCharges,data = churn_train, family = 'binomial')->logmodel2
          summary(logmodel2)
          
#   3. After splitting the data frame into train and test sets, build a simple logistic model on 
#      top of the train set for the Pharmacovigilance_audit_Data data frame. 
#      a. For this model, take Age as independent variable and DrugId as dependent 
#         variable. 
          glm(DrugID~Age, data = pharma_train,family = 'binomial')->logmodel3
          summary(logmodel3)



# Module 6: Assignment 3 – Significance of Features
# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
# train and test sets, now the corporation wants you to train the multiple logistic regression 
# model. 
# Tasks to be performed:
#   1. After splitting the data frame into train and test sets, build a multiple logistic model 
#      on top of the train set for the city_temperature data frame. 
#      a. For this model, take AvgTemperature, Day, Month, and Year as the 
#         independent variable and Region as the dependent variable. 
          glm(Region~Year+Month+Day+AvgTemperature,data = temp_train, family = 'binomial')->mul_log_mod1
#      b. Check the significance of the features that you have selected for the model. 
          summary(mul_log_mod1)
          
#   2. After splitting the data frame into train and test sets, build a multiple logistic model 
#      on top of the train set for the Customer_Churn data frame. 
#      a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges 
#         as the independent variable and Churn as dependent variable.
          glm(Churn~tenure+StreamingTV+MonthlyCharges+TotalCharges,data = churn_train, family = 'binomial')->mul_log_mod2
#      b. Check the significance of the features that you have selected for the model.
          summary(mul_log_mod2)
 
                   
#   3. After splitting the data frame into train and test sets, build a multiple logistic model 
#      on top of the train set for the Pharmacovigilance_audit_Data data frame. 
#      a. For this model, take Gender, Age, and Patient_Id as independent variable and 
#         DrugId as dependent variable.
          glm(DrugID~Gender+Age+PatientID, data = pharma_train, family = 'binomial')->mul_log_mod3
          
#      b. Check the significance of the features that you have selected for the model
          summary(mul_log_mod3)


# Module 6: Assignment 4 – Null Deviance & Residual
# Deviance
# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into
#   train and test sets, now the corporation wants you to train the multiple logistic regression
#   model.
# Tasks to be performed:
# 1. After splitting the data frame into train and test sets, build a multiple logistic model
#    on top of the train set for the city_temperature data frame.
#    a. For this model, take AvgTemperature, Day, Month, and Year as the
#       independent variable and Region as the dependent variable.
        glm(Region~Year+Month+Day+AvgTemperature,data = temp_train, family = 'binomial')->mul_log_mod1
          
#    b. Now analyze the null deviance and residual deviance.
        summary(mul_log_mod1)
        
# 2. After splitting the data frame into train and test sets, build a multiple logistic model
#    on top of the train set for the Customer_Churn data frame.
#    a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges
#       as the independent variable and Churn as dependent variable.
        glm(Churn~tenure+MonthlyCharges+StreamingTV+TotalCharges,data = churn_train, family = 'binomial')->mul_log_mod2
        
#    b. After training, analyze the null deviance and residual deviance.
        summary(mul_log_mod2)
        
# 3. After splitting the data frame into train and test sets, build a multiple logistic model
#    on top of the train set for the Pharmacovigilance_audit_Data data frame.
#    a. For this model, take Gender, Age, and Patient_Id as independent variable and
#       DrugId as dependent variable.
        glm(DrugID~Gender+Age+PatientID, data = pharma_train, family = 'binomial')->mul_log_mod3
        
        
#    b. Now analyze the null deviance and residual deviance.
        summary(mul_log_mod3)



# Module 6: Assignment 5 – Multiple Logistics Regression
# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
# train and test sets, now the corporation wants you to train the multiple logistic regression 
# model. 
# Tasks to be performed:
# 1. After splitting the data frame into train and test sets, build a multiple logistic model 
#    on top of the train set for the city_temperature data frame. 
#    a. For this model, take AvgTemperature, Day, Month, and Year as the 
#       independent variable and Region as the dependent variable.
        glm(Region~Year+Month+Day+AvgTemperature,data = temp_train, family = 'binomial')->mul_log_mod1
        
# 2. After splitting the data frame into train and test sets, build a multiple logistic model 
#    on top of the train set for the Customer_Churn data frame. 
#    a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges 
#       as the independent variable and Churn as dependent variable.
        glm(Region~Year+Month+Day+AvgTemperature,data = temp_train, family = 'binomial')->mul_log_mod1
        
# 3. After splitting the data frame into train and test sets, build a multiple logistic model 
#    on top of the train set for the Pharmacovigilance_audit_Data data frame. 
#    a. For this model, take Gender, Age, and Patient_Id as independent variable and 
#       DrugId as dependent variable.
        glm(DrugID~Gender+Age+PatientID, data = pharma_train, family = 'binomial')->mul_log_mod3
        


# Module 6: Assignment 6 – Independent & Dependent 
# Features for Logistic Regression
# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. The corporation wants you to 
#   recognize the set of independent and dependent features from the sets of datasets for the 
#   Logistic Regression Model. 

# Tasks to be performed:
# 1. Load the city_temperature dataset . 
#    a. Find out the independent and dependent features from the data frame for model 
#       training.
        glm(Region~Year+Month+Day+AvgTemperature,data = temp_train, family = 'binomial')->mul_log_mod1
        
# 2. Load the Customer_Churn dataset. 
#    a. Find out the independent and dependent features from the data frame for model 
#       training.
        glm(Region~Year+Month+Day+AvgTemperature,data = temp_train, family = 'binomial')->mul_log_mod1
        
# 3. Load the Pharmacovigilance_audit_Data dataset. 
#    a. Find out the independent and dependent features from the data frame for the 
#       model training.
        glm(DrugID~Gender+Age+PatientID, data = pharma_train, family = 'binomial')->mul_log_mod3
        

# Module 6: Assignment 7 – Confusion Matrix & Accuracy
# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After training the logistic 
#   model, and predicting the values on top of the test set, now find out the confusion matrix and 
#   accuracy score of the models. 

# Tasks to be performed for Simple Logistic Regression:
#   1. After building a simple logistic model on top of the train set for the city_temperature 
#      data frame, now find the prediction values of the model1 on top of the test dataset. 
        glm(Region~Year+Month+Day+AvgTemperature,data = temp_train, family = 'binomial')->mul_log_mod1
        predict(mul_log_mod1,newdata = temp_test, type = 'response')->pred1
#   a. Now combine the actual values and predicted values of the model and store 
#      that combined data in a new data frame named ‘Result1’.
        as.data.frame(cbind(Actual=temp_test$Region,Predicted=pred1))->result1
        View(result1)
        
#   b. Find out the errors in the predicted values. 
        
#   c. Now calculate the confusion matrix from the actual and the predicted values. 
        
        
        
#   d. From the confusion matrix, calculate the accuracy of the model.
        
# 2. After building a simple logistic model on top of the train set for the Customer_Churn 
#    data frame, now find the prediction values of the model2 on top of the test dataset. 
# a. Now combine the actual values and predicted values of the model and store 
#    that combined data in a new data frame named ‘Result2’.
# b. Find out the errors in the predicted values. 
# c. Now calculate the confusion matrix from the actual and the predicted values. 
# d. From the confusion matrix, calculate the accuracy of the model. 
        
# 3. After building a simple logistic model on top of the train set for the 
#    Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
#    model3 on top of the test dataset. 
# a. Now combine the actual values and predicted values of the model and store 
#    that combined data in a new data frame named ‘Result3’.
# b. Find out the errors in the predicted values. 
# c. Now calculate the confusion matrix from the actual and the predicted values. 
# d. From the confusion matrix, calculate the accuracy of the model. 


# Module 6: Assignment 8 – AIC Value
# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
#   train and test sets, now the corporation wants you to train the multiple logistic regression 
#   model. 
# Tasks to be performed:
        
#  1. After splitting the data frame into train and test sets, build a multiple logistic model 
#     on top of the train set for the city_temperature data frame. 
#  a. For this model, take AvgTemperature, Day, Month, and Year as the 
#     independent variable and Region as the dependent variable. 
        glm(Region~AvgTemperature+Day+Month+Year, family = 'binomial',data = temp_train)->mul_log_mod1
        
#  b. Analyze the AIC value of the model. 
        summary(mul_log_mod1)
        
#  2. After splitting the data frame into train and test sets, build a multiple logistic model 
#     on top of the train set for the Customer_Churn data frame. 
#     a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges 
#        as the independent variable and Churn as dependent variable. 
         glm(Region~Year+Month+Day+AvgTemperature,data = temp_train, family = 'binomial')->mul_log_mod1
        
        
#     b. Analyze the AIC value of the model.
         summary(mul_log_mod2)
        
# 3. After splitting the data frame into train and test sets, build a multiple logistic model 
#    on top of the train set for the Pharmacovigilance_audit_Data data frame. 
#    a. For this model, take Gender, Age, and Patient_Id as independent variable and 
#       DrugId as dependent variable. 
        glm(DrugID~Gender+Age+PatientID, data = pharma_train, family = 'binomial')->mul_log_mod3
        
#    b. Analyze the AIC value of the model. 
        summary(mul_log_mod3)



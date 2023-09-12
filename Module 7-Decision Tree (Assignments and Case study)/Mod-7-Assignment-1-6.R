
# Loading datasets:
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\customer_churn.csv", stringsAsFactors = T)->customer_churn
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\city_temperature.csv", stringsAsFactors = T)->temperature
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\Pharmacovigilance_audit_Data.csv", stringsAsFactors = T)->pharma

# Required Library:
  library(caTools)
  library(tree)

# Module 7: Assignment 1 – Splitting Data Frame

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After finding out the 
#   Dependent and Independent Features of the data frames, now the corporation wants you to 
#   split the datasets into train and test sets so that you can feed those data to the decision tree 
#   model.

# Tasks to be performed:
# 1. From the city_temperature dataset, split the data frame into train and test sets. 
# a. Split the dataset into 70:30 ratio by the dependent feature. 
     sample.split(temperature$AvgTemperature,SplitRatio = 0.70)->split1
     train1=subset(temperature,split1==T)
     test1=subset(temperature,split1==F)

# 2. From the Customer_Churn, split the data frame into train and test sets. 
# a. Split the dataset into 80:20 ratio by the dependent feature. 
     sample.split(customer_churn$Churn,SplitRatio = 0.80)->split2
     train2=subset(customer_churn,split2==T)
     test2=subset(customer_churn,split2==F)
     

# 3. From the Pharmacovigilance_audit_Data, split the data frame into train and test sets. 
# a. Split the dataset into 75:25 ratio by the dependent feature. 
     sample.split(pharma$DrugID,SplitRatio = 0.75)->split3
     train3=subset(pharma,split3==T)
     test3=subset(pharma,split3==F)
     



# Module 7: Assignment 2 – Misclassification Error Rate

# Problem Statement:

#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
#   train and test sets, now the corporation wants you to train the Decision Tree model. 
     
# Tasks to be performed:
     
# 1. After splitting the data frame into train and test sets, build a decision tree model on 
#    top of the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature as the independent variable and Region 
#    as the dependent variable. 
     tree(Region~AvgTemperature,data = train1)->model1
     summary(model1)
     
# b. Now calculate the Misclassification Error Rate from the model. 
     summary(model1)$misclass
     
# 2. After splitting the data frame into train and test sets, build a decision tree model on 
#    top of the train set for the Customer_Churn data frame. 
# a. For this model, take Monthly Charges as the independent variable and Churn 
#    as dependent variable.
     tree(Churn~MonthlyCharges,data = train2)->model2
     summary(model2)
     
# b. Now calculate the Misclassification Error Rate from the model. 
     summary(model2)$misclass
     
# 3. After splitting the data frame into train and test sets, build a decision tree model on 
# top of the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Age as independent variable and DrugId as dependent 
# variable. 
     tree(DrugID~Age,data = train3)->model3
     summary(model3)
    
# b. Now calculate the Misclassification Error Rate from the model.
     summary(model3)$misclass
     
     
     



# Module 7: Assignment 3 – Independent & Dependent Features
     
     
# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. The corporation wants you to 
#   recognize the set of independent and dependent features from the sets of datasets for the 
#   Decision Tree Model. 
     
# Tasks to be performed:
     
# 1. Load the city_temperature dataset. 
# a. Find out the independent and dependent features from the data frame for model 
#    training.
     cat("Dependent Variables: (AvgTemperature)")
     cat("Independent Variables: (Region,Country,State,City,Day,Month,Year)")
     
# 2. Load the Customer_Churn.
# a. Find out the independent and dependent features from the data frame for model 
# training. 
     cat("Dependent Variables: (Churn)")
     cat("Independent Variables: customerID" , "gender" , "SeniorCitizen"  ,"Partner", "Dependents" ,     
  "tenure" , "PhoneService",   "MultipleLines", "InternetService" , "OnlineSecurity" , 
 "OnlineBackup", "DeviceProtection", "TechSupport", "StreamingTV", "StreamingMovies", 
 "Contract", "PaperlessBilling", "PaymentMethod", "MonthlyCharges" , "TotalCharges"  )
     
     
# 3. Load the Pharmacovigilance_audit_Data.
# a. Find out the independent and dependent features from the data frame for the 
#    model training. 
     cat("Dependent Variables: (DrugID)")
     cat("Independent Variables: (Age,Gender,Issue)")
     




# Module 7: Assignment 4 – Decision Tree Model
# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
# train and test sets, now the corporation wants you to train the Decision Tree model. 
# Tasks to be performed:
# 1. After splitting the data frame into train and test sets, build a decision tree model on 
#    top of the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature as the independent variable and Region 
#    as the dependent variable. 
     tree(Region~AvgTemperature,data = train1)->model1
     summary(model1)
     
# 2. After splitting the data frame into train and test sets, build a decision tree model on 
#    top of the train set for the Customer_Churn data frame. 
# a. For this model, take Monthly Charges as the independent variable and Churn 
#    as dependent variable. 
     tree(Churn~MonthlyCharges,data = train2)->model2
     summary(model2)
     
# 3. After splitting the data frame into train and test sets, build a decision tree model on 
#    top of the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Age as independent variable and DrugId as dependent 
#    variable.
     tree(DrugID~Age,data = train3)->model3
     summary(model3)
     




# Module 7: Assignment 5 – Confusion Matrix
# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After training the decision tree 
# model, now the corporation wants you to predict the values on top of the test set. 
# Tasks to be performed:
# 1. After building the decision tree model on top of the train set for the city_temperature data frame, now find 
#    the prediction values of the model1 on top of the test dataset.
     tree(Region~AvgTemperature+Day+Month+Year,data = train1)->model1
     predict(model1,newdata = test1,type = 'class')->result1
# a. Plot the model with the help of plot()
     plot(model1) 
     text(model1)
     
# b. Print the top 10 data from the predicted values.
     result1[1:10]
     
# c. Now based on the actual and the predicted values, calculate the confusion matrix for the model.
     table(test1$Region,result1)
     
# 2. After building the decision tree model on top of the train set for the Customer_Churn data frame, now find 
#    the prediction values of the model1 on top of the test dataset. 
     predict(model2,newdata = test2,type = 'class')->result2
# a. Plot the model with the help of plot(). 
     plot(model2)
     text(model2)
     
# b. Print the top 10 data from the predicted values.
     result2[1:10]
     table(result2)
# c. Now based on the actual and the predicted values,
#    calculate the confusion matrix for the model. 
     table(test2$Churn,result2)
     
# 3. After building the decision tree model on top of the train set 
#    for the Pharmacovigilance_audit_Data data 
#    frame, now find the prediction values of the model1 on top of the test dataset. 
     tree(DrugID~Gender+Age+Issues+LocationID,data = train3)->model3
     predict(model3,newdata = test3,type = 'class')->result3
     
# a. Plot the model with the help of plot(). 
     plot(model3)
     text(model3)
     
# b. Print the top 10 data from the predicted values. 
     result3[1:10]
     
# c. Now based on the actual and the predicted values, calculate the confusion matrix for the model. 
     table(test3$DrugID,result3)




# Module 7: Assignment 6 – Accuracy
     
     
# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After training the decision tree 
#   model, now the corporation wants you to predict the values on top of the test set. 
     
# Tasks to be performed:
# 1. After building the decision tree model on top of the train set for the city_temperature 
#    data frame and predicting values of the model1 on top of the test dataset, calculate 
#    the confusion matrix. 
     table(test1$Region,result1)
     
# a. Now based on the confusion matrix values, calculate the accuracy of the 
#    model. 
     cat("Accuracy:",(152+489+0+933+0)/(152+100+28+60+27+384+489+27+69+57+0+188+320+106+933+30+0))
     
# 2. After building the decision tree model on top of the train set for the Customer_Churn 
#    data frame and predicting values of the model2 on top of the test dataset, calculate 
#    the confusion matrix. 
     table(test2$Churn,result2)
     
# a. Now based on the confusion matrix values, calculate the accuracy of the 
#    model. 
     cat("Accuracy:",(1035+0)/(1035+0+374+0))
     
# 3. After building the decision tree model on top of the train set for the 
#    Pharmacovigilance_audit_Data data frame and predicting values of the model3 on top 
#    of the test dataset, calculate the confusion matrix.
     table(test3$DrugID,result3)
     
# a. Now based on the confusion matrix values, calculate the accuracy of the 
#    model. 
     cat("Accuracy:",(335+138+7)/(335+34+29+7+138+0+0+0+7))
     
     
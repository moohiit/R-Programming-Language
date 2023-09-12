

#Loading the required dataset:
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\customer_churn.csv", stringsAsFactors = T)->customer_churn
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\city_temperature.csv", stringsAsFactors = T)->temperature
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\Pharmacovigilance_audit_Data.csv", stringsAsFactors = T)->pharma

# Loading the required library:
library(caTools)
library(randomForest)



# Module 8: Assignment 4 – Independent & Dependent Features

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. The corporation wants you to 
#   recognize the set of independent and dependent features from the sets of datasets for the 
#   Random Forest Model.

# Tasks to be performed: 
# 1. Load the city_temperature dataset.
     read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\customer_churn.csv", stringsAsFactors = T)->customer_churn

# a. Find out the independent and dependent features from the data frame for 
#    model training.
     cat("Dependent Variable: AvgTemperature")
     cat("Independent Variable: Region ,Country, Day, Month, Year")
     
     
# 2. Load the Customer_Churn dataset.
     read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\city_temperature.csv", stringsAsFactors = T)->temperature
     
# a. Find out the independent and dependent features from the data frame for 
#    model training. 
     cat("Dependent Variable: Churn")
     cat("Independent Variable: MonthlyCharges ,TotalCharges, Gender, PaymentMethod, Partner,
         OnlineSecurity,tenure, PhoneService, InternetService,Dependents,Multiplelines, 
         OnlineBackup,DeviceProtection")
     
     
# 3. Load the Pharmacovigilance_audit_Data dataset. 
     read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\Pharmacovigilance_audit_Data.csv", stringsAsFactors = T)->pharma
     
# a. Find out the independent and dependent features from the data frame for the 
#    model training. 
     cat("Dependent Variable: DrugID")
     cat("Independent Variable: Age ,Issues, Gender, LocationID")
     



# Module 6: Assignment 8 – Splitting Data Frame

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After finding out the 
#   Dependent and Independent Features of the data frames, now the corporation wants you to 
#   split the datasets into train and test sets so that you can feed those data to the logistic model.

# Tasks to be performed: 
# 1. From the city_temperature dataset, split the data frame into train and test sets.
# a. Split the dataset into 70:30 ratio by the dependent feature. 
     sample.split(temperature$Region,SplitRatio = 0.70)->split1
     subset(temperature,split1==T)->train1
     subset(temperature,split1==F)->test1

# 2. From the Customer_Churn, split the data frame into train and test sets. 
# a. Split the dataset into 80:20 ratio by the dependent feature. 
     na.omit(customer_churn)->customer_churn
     sample.split(customer_churn$Churn,SplitRatio = 0.80)->split2
     subset(customer_churn,split2==T)->train2
     subset(customer_churn,split2==F)->test2
     
# 3. From the Pharmacovigilance_audit_Data, split the data frame into train and test sets. 
# a. Split the dataset into 75:25 ratio by the dependent feature.
     sample.split(pharma$DrugID,SplitRatio = 0.75)->split3
     subset(pharma,split3==T)->train3
     subset(pharma,split3==F)->test3
     





# Module 8: Assignment 7 – Random Forest using one Target Feature

# Problem Statement:
# You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
# train and test sets, now the corporation wants you to train the Random Forest model.

# Tasks to be performed: 
# 1. After splitting the data frame into train and test sets, build a random forest model on 
#    top of the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature as the independent variable and Region 
#    as the dependent variable. 
     randomForest(Region~AvgTemperature,data = train1,ntree=100)->model1
     
# 2. After splitting the data frame into train and test sets, build a random forest model on 
#    top of the train set for the Customer_Churn data frame. 
# a. For this model, take Monthly Charges as the independent variable and Churn 
#    as dependent variable. 
     randomForest(Churn~MonthlyCharges,data = train2,ntree=100)->model2
     
# 3. After splitting the data frame into train and test sets, build a random forest model on 
#    top of the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Age as independent variable and DrugId as dependent 
#    variable.
     randomForest(DrugID~Age,data = train3,ntree=100)->model3



     
# Module 8: Assignment 6 – Random Forest using Multiple Independent Features

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
#   train and test sets, now the corporation wants you to train the random model with multiple 
#   independent features.

# Tasks to be performed: 
# 1. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature, Day, Month, and Year as the 
#    independent variable and Region as the dependent variable.
     randomForest(Region~AvgTemperature+Day+Month+Year,data = train1,ntree=100)->mul_model1
     
# 2. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the Customer_Churn data frame. 
# a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges 
#    as the independent variable and Churn as dependent variable. 
     randomForest(Churn~MonthlyCharges+TotalCharges+StreamingTV+tenure,data = train2,ntree=100)->mul_model2
     
# 3. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Gender, Age, and Patient_Id as independent variable and 
#    DrugId as dependent variable.
     randomForest(DrugID~Age+PatientID+Gender,data = train3,ntree=100)->mul_model3





# Module 8: Assignment 3 – importance()

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
#   train and test sets, now the corporation wants you to train the random model with multiple 
#   independent features.

# Tasks to be performed: 
# 1. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature, Day, Month, and Year as the 
#    independent variable and Region as the dependent variable. 
     randomForest(Region~AvgTemperature+Day+Month+Year,data = train1,ntree=100)->mul_model1
     

# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
#    model. 
     importance(mul_model1)
     
# 2. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the Customer_Churn data frame. 
# a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges 
#    as the independent variable and Churn as dependent variable.
     randomForest(Churn~MonthlyCharges+TotalCharges+StreamingTV+tenure,data = train2,ntree=100)->mul_model2
     
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
#    model. 
     importance(mul_model2)
     
# 3. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Gender, Age, and Patient_Id as independent variable and 
#    DrugId as dependent variable. 
     randomForest(DrugID~Age+PatientID+Gender,data = train3,ntree=100)->mul_model3
     
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
#    model.
     importance(mul_model3)


     

# Module 8: Assignment 9 – varImplot()

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
#   train and test sets, now the corporation wants you to train the random model with multiple 
#   independent features.

# Tasks to be performed: 
# 1. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature, Day, Month, and Year as the 
#    independent variable and Region as the dependent variable. 
     randomForest(Region~AvgTemperature+Day+Month+Year,data = train1,ntree=100)->mul_model1
     
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
#    model. 
     importance(mul_model1)
     
# c. Now plot the MeanDecreaseGini. 
     varImpPlot(mul_model1)
     
# 2. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the Customer_Churn data frame. 
# a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges 
#    as the independent variable and Churn as dependent variable. 
     randomForest(Churn~MonthlyCharges+TotalCharges+StreamingTV+tenure,data = train2,ntree=100)->mul_model2
     
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
#    model. 
     importance(mul_model2)
     
# c. Now plot the MeanDecreaseGini.
     varImpPlot(mul_model2)
     
# 3. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Gender, Age, and Patient_Id as independent variable and 
#    DrugId as dependent variable. 
     randomForest(DrugID~Age+PatientID+Gender,data = train3,ntree=100)->mul_model3
     
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
#    model. 
     importance(mul_model3)
     
# c. Now plot the MeanDecreaseGini.
     varImpPlot(mul_model3)




# Module 8: Assignment 10 – varImPlot()

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After splitting the data into 
#   train and test sets, now the corporation wants you to train the random model with multiple 
#   independent features.

# Tasks to be performed: 
# 1. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature, Day, Month, and Year as the 
#    independent variable and Region as the dependent variable. 
     randomForest(Region~AvgTemperature+Day+Month+Year,data = train1,ntree=100)->mul_model1
     
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
#    model. 
     importance(mul_model1)
     
# c. Now plot the MeanDecreaseGini with the help of varImpPlot().
     varImpPlot(mul_model1)
     
# 2. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the Customer_Churn data frame. 
# a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges 
#    as the independent variable and Churn as dependent variable.
     randomForest(Churn~MonthlyCharges+TotalCharges+StreamingTV+tenure,data = train2,ntree=100)->mul_model2
     
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
#    model. 
     importance(mul_model2)
     
# c. Now plot the MeanDecreaseGini with the help of varImpPlot(). 
     varImpPlot(mul_model2)
     
# 3. After splitting the data frame into train and test sets, build a random model on top of 
#    the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Gender, Age, and Patient_Id as independent variable and 
#    DrugId as dependent variable. 
     randomForest(DrugID~Age+PatientID+Gender,data = train3,ntree=100)->mul_model3
     
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
#    model. 
     importance(mul_model3)
     
# c. Now plot the MeanDecreaseGini with the help of varImpPlot().
     varImpPlot(mul_model3)
     
     
# Module 8: Assignment 5 – Predicting Values

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After training the random 
#   forest model, now the corporation wants you to predict the values on top of the test set.

# Tasks to be performed for Random Forest (Using only one Independent Variable): 
# 1. After building a random forest model on top of the train set for the city_temperature 
#    data frame, now find the prediction values of the model1 on top of the test dataset.
     predict(model1,newdata = test1,type = 'class')->result1
     
# a. Print the top 10 predictions of the model. 
     result1[1:10]
     
# 2. After building a random forest model on top of the train set for the Customer_Churn 
#    data frame, now find the prediction values of the model2 on top of the test dataset. 
     predict(model2,newdata = test2,type = 'class')->result2
     
# a. Print the top 10 predictions of the model. 
     result2[1:10]
     
     
# 3. After building a random forest model on top of the train set for the 
#    Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
#    model3 on top of the test dataset.
     predict(model3,newdata = test3,type = 'class')->result3
     
# a. Now print the top 10 predictions of the model. 
     result3[1:10] 
# 
# Tasks to be performed for Random Forest (Using Multiple Independent Variables):

# 1. After building a random forest model on top of the train set for the city_temperature 
#    data frame, now find the prediction values of the model1 on top of the test dataset. 
     predict(mul_model1,newdata = test1,type = 'class')->mul_result1
     
# a. Now print the top 10 predictions of the model. 
     mul_result1[1:10]
     
# 2. After building a random forest model on top of the train set for the Customer_Churn 
#    data frame, now find the prediction values of the model2 on top of the test dataset.
     predict(mul_model2,newdata = test2,type = 'class')->mul_model2
     
# a. Now print the top 10 predictions of the model.
     mul_result2[1:10]
     
# 3. After building a random forest model on top of the train set for the 
#    Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
#    model3 on top of the test dataset.
     predict(mul_model3,newdata = test3,type = 'class')->mul_result3
     
# a. Now print the top 10 predictions of the model.
     mul_result3[1:10]








# Module 8: Assignment 2 – Confusion Matrix


# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After training the decision tree
#   model, now the corporation wants you to predict the values on top of the test set.

# Tasks to be performed:
# 1. After building the decision tree model on top of the train set for the city_temperature
#    data frame, now find the prediction values of the model1 on top of the test dataset.
# a. Plot the model with the help of plot().
     plot(mul_model1)
     
# b. Print the top 10 data from the predicted values.
     mul_result1[1:10]
     
# c. Now based on the actual and the predicted values, calculate the confusion
#    matrix for the model.
     table(test1$Region,mul_result1)
     
# 2. After building the decision tree model on top of the train set for the Customer_Churn
#    data frame, now find the prediction values of the model1 on top of the test dataset.
# a. Plot the model with the help of plot().
     plot(mul_model2)
     
# b. Print the top 10 data from the predicted values.
     mul_result2[1:10]
     
# c. Now based on the actual and the predicted values, calculate the confusion
#    matrix for the model.
     table(test2$Churn,mul_result2)
     
# 3. After building the decision tree model on top of the train set for the
#    Pharmacovigilance_audit_Data data frame, now find the prediction values of the
#    model1 on top of the test dataset.
# a. Plot the model with the help of plot().
     plot(mul_model3)
     
# b. Print the top 10 data from the predicted values.
     mul_result3[1:10]
     
# c. Now based on the actual and the predicted values, calculate the confusion
#    matrix for the model.
     table(test3$DrugID,mul_result3)


# Module 8: Assignment 1 – Accuracy

# Problem Statement:
#   You work in XYZ Corporation as a Machine Learning Engineer. After training the decision tree 
#   model, now the corporation wants you to predict the values on top of the test set. 

# Tasks to be performed:
# 1. After building the decision tree model on top of the train set for the city_temperature 
#    data frame and predicting values of the model1 on top of the test dataset, calculate 
#    the confusion matrix. 
     table(test1$Region,mul_result1)
# a. Now based on the confusion matrix values, calculate the accuracy of the 
#    model. 
     cat("Acccuracy:",(313+393+22+879+15)/(313+228+35+82+35+241+393+23+113+44+19+16+22+10+0+150+243+83+879+25+10+11+4+3+15))
     
# 2. After building the decision tree model on top of the train set for the Customer_Churn 
#    data frame and predicting values of the model2 on top of the test dataset, calculate 
#    the confusion matrix. 
     table(test2$Churn,mul_result2)
     
# a. Now based on the confusion matrix values, calculate the accuracy of the 
#    model. 
     cat("Accuracy:",(905+195)/(905+195+128+179))
     
# 3. After building the decision tree model on top of the train set for the 
#    Pharmacovigilance_audit_Data data frame and predicting values of the model3 on top 
#    of the test dataset, calculate the confusion matrix. 
     table(test3$DrugID,mul_result3)
     
# a. Now based on the confusion matrix values, calculate the accuracy of the 
#    model.
     cat("Accuracy:",(339+2+0)/(339+170+35+3+2+1+0+0+0))




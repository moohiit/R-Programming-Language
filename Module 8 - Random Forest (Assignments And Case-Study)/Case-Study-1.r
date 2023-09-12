


#loading the dataset:
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\customer_churn.csv", stringsAsFactors = T)->customer_churn
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\city_temperature.csv", stringsAsFactors = T)->temperature
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Datasets\\Pharmacovigilance_audit_Data.csv", stringsAsFactors = T)->pharma

#Loading the required Library:
library(caTools)
library(randomForest)


# Module 8: Case Study 1 – Random Forest

# Problem Statement:
#   In this semester, Sam will learn about ‘Random Forest’. Sam’s first exam would be on 
#   implementing “Random Forest” algorithm in R. Questions would be asked on the basis on 
#   what you’ve learnt in the respective module.

# Tasks to be performed: 
# 1. Building the first “Random Forest” model: 
# a. Start off by dividing the ‘customer_churn’ data into train & test sets in 65:35 
#    ratios. The split-criteria would be determined by the ‘gender’ column.
     sample.split(customer_churn$gender,SplitRatio = 0.65)->split
     subset(customer_churn,split==T)->train
     subset(customer_churn,split==F)->test

# b. Build a random forest model on top of the ‘train’ set, where the dependent 
#    variable is ‘gender’ & the independent variables are ‘MonthlyCharges’ & 
#    ‘tenure’. The number of decision trees in the random forest would be 35. Store 
#    the result in ‘mod_forest1’.
     randomForest(gender~MonthlyCharges+tenure,data = train,ntree=35)->mod_forest1
     
# c. Find the importance of the independent variables and also plot it 
     importance(mod_forest1)
     varImpPlot(mod_forest1)
     
# d. Predict the values on top of the test set & store the result in ‘result_forest1’ 
     predict(mod_forest1,newdata = test,type = 'class')->result_forest1
     
# e. Build a confusion matrix for the actual values & the predicted values
     table(test$gender,result_forest1)
     
# f. Find out the accuracy from the confusion matrix 
     cat("Accuracy:",(593+622)/(593+628+622+622))
     
# 2. Build a 2nd ‘Random forest’ model on the same train & test sets: 
# a. The dependent & the independent variables would be same. The number of 
#    decision trees would be 350. Store the result in ‘mod_forest2’
     randomForest(gender~MonthlyCharges+tenure,data = train,ntree=350)->mod_forest2
     
# b. Find the importance of the independent variables & also plot it 
     importance(mod_forest2)
     varImpPlot(mod_forest2)
     
# c. Predict the values on top of test set & store the result in ‘result_forest2’
     predict(mod_forest2,newdata = test,type = 'class')->result_forest2
     
# d. Build a confusion matrix for the actual values & predicted values 
     table(test$gender,result_forest2)
     
# e. Find out the accuracy from the confusion matrix
     cat("Accuracy;",(592+617)/(592+617+627+629))
     



# Module 7: Case Study 1 – Decision Tree

# Problem Statement:
#   In this semester, Sam will learn about ‘Decision Trees’. Sam’s first would be on implementing 
#   decision trees in R. Questions would be asked on the basis on what you’ve learnt in the 
#   respective module.

# Tasks to be performed: 
# 1. Building a decision tree model: 
# a. Start off by dividing the ‘customer_churn’ data into train & test sets in 70:30 ratios. 
#    The split-criteria would be determined by the ‘Dependents’ column 
     library(caTools)
     sample.split(customer_churn$Dependents,SplitRatio = 0.70)->split
     train<-subset(customer_churn,split==T)
     test<-subset(customer_churn,split==F)

# b. Build a decision tree model on top of the ‘train’ set, where the dependent variable is 
#    ‘Dependents’ & the independent variable is ‘Partner’. Store the result in ‘mod_tree1’.
     library(tree)
     tree(Dependents~Partner,data = train)->tree_model1
     
# c. Plot the tree and add text 
     plot(tree_model1)
     text(tree_model1)
     
# d. Predict the values on the test set and store the result in ‘result_tree1’ 
     predict(tree_model1,newdata = test,type = 'class')->result_tree1
     as.data.frame(cbind(Actual=test$Dependents,Predicted=result_tree1))->data1
     View(data1)
     
# e. Build a confusion matrix for the actual values & the predicted values 
     table(Actual=test$Dependents,Predicted=result_tree1)
     
# f. Calculate the accuracy from the confusion matrix 
     cat("Accuracy:",(1002+530)/(1002+530+478+103))
     
# 2. Building 2nd decision tree model on same ‘train’ & ‘test’ sets: 
# a. In this case the dependent variable is ‘Dependents’ & the independent variables are 
#    ‘Partner’ & ‘InternetService’. Store the result in ‘mod_tree2’ 
     tree(Dependents~Partner+InternetService,data = train)->mod_tree2
     
     
# b. Plot the tree & add text 
     plot(mod_tree2)
     text(mod_tree2)
     
# c. Predict the values on the test set & store the result in ‘result_tree2’
     predict(mod_tree2,newdata = test,type = 'class')->result_tree2
     as.data.frame(cbind(Actual=test$Dependents,Predicted=result_tree2))->data2
     View(data2)
     
# d. Build a confusion matrix for the actual values & the predicted values 
     table(Actual=test$Dependents,Predicted=result_tree2)
     
# e. Calculate the accuracy from the confusion matrix
     cat("Accuracy:",(1292+354)/(1292+354+188+279))
     


# Module 6: Case Study 2 – ROC Curve

# Problem Statement:
#   Sam’s next exam is on ‘ROC curve’. Questions would be asked on the basis of what you’ve 
# learnt in the respective module.

# Tasks to be performed: 
       
# 1. Build a logistic regression model: 
#   a. Start off by dividing the data-set into ‘train’ & ‘test’ sets in 80:20 ratio, with the split
#      criteria being determined by ‘Churn’ column 
       library(caTools)
       sample.split(customer_churn$Churn,SplitRatio = 0.80)->split
       train<-subset(customer_churn,split==T)
       test<-subset(customer_churn,split==F)
       
#   b. Build a logistic regression model on the train set where the dependent variable is 
#      ‘Churn’ & the independent variables are ‘MonthlyCharges’, ‘tenure’ & ‘TechSupport’ & 
#      store the result in ‘log_mod_roc’ 
       glm(Churn~MonthlyCharges+tenure+TechSupport,data = train,family = 'binomial')->log_mod_roc
       
#   c. Predict the values on top of the test set & store the result in ‘result_log_roc’ 
       predict(log_mod_roc,newdata = test,type = 'response')->result_log_roc
       
#   d. Use the performance () function from the ROCR package & build the ‘Accuracy vs cut-off’ plot e.
#      Plot the ‘ROC’ curve 
       library(ROCR)
       
       prediction(result_log_roc,test$Churn)->roc_pred
       performance(roc_pred,measure = 'tpr',x.measure='fpr')->roc_per
       performance(roc_pred,measure ='auc' )->auc
       
#   e. Find out the “area under the curve
       plot(roc_per)
       auc <- auc@y.values[[1]]
       auc
       plot(roc_per, colorize = TRUE,
            print.cutoffs.at = seq(0.1, by = 0.1),
            main = "ROC CURVE")
       plot(auc)
       
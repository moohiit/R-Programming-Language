

# Module 6: Case Study 1 – Multiple Logistic Regression

# Problem Statement:
#   Sam’s next exam is on ‘Multiple Logistic Regression’. Questions would be asked on the 
#   basis of what you’ve learnt in the respective module

# Tasks to be performed: 

# 1. Build a multiple logistic regression model: 
#    a. Start off by dividing the data-set into ‘train’ & ‘test’ sets in 65:35 ratio, 
#       with the splitcriteria being determined by ‘gender’ column 
        library(caTools)
        #customer_churn$gender<-ifelse(customer_churn$gender=='Male',1,0)
        sample.split(customer_churn$gender,SplitRatio = 0.65)->split_tag
        train<-subset(customer_churn,split_tag==T)
        View(train)
        test<-subset(customer_churn,split_tag==F)
        View(test)
        

#    b. Build a logistic regression model on the train set where the dependent variable is ‘gender’ 
#       & the independent variables are ‘Dependents’, ‘InternetService’ & ‘Contract’ & store the 
#       result in ‘log_mod_multi’ 
        log_mod_multi<-glm(data = train,gender~Dependents+InternetService+Contract,family = 'binomial')
        
        
#    c. Predict the values on top of the test set & store the result in ‘result_log_multi’ 
        predict(log_mod_multi,newdata = test,type = 'response')->result_log_multi
        
#    d. Have a look at the range of ‘result_log_multi’ & build a confusion matrix where the 
#       threshold of predicted values is greater than ‘0.49’ 
        range(result_log_multi)
        table(test$gender,result_log_multi>0.490)
        table(test$gender)
        
        library(caret)
        test$gender<-ifelse(test$gender=='Male',1,0)
        result_log<-ifelse(result_log_multi>0.50,1,0)
        as.data.frame(cbind(Actual=test$gender,Predicted=result_log))->data
        confusionMatrix(as.factor(data$Actual),as.factor(data$Predicted))->confusionmatrix
        confusionmatrix

#    e. Calculate the accuracy of the model from the confusion matrix 
        cat('Accuracy:',(83+1157)/(83+1157+1138+87))
        
        

# 2. Build second logistic regression model on the same ‘train’ & ‘test’ sets 
#    a. In this case dependent variable is ‘gender’ & the independent variables are ‘tenure’, 
#       ‘MonthlyCharges’ & ‘PaymentMethod 
        glm(data = train,gender~tenure+MonthlyCharges+PaymentMethod,family = 'binomial')->model2
#    b. Predict the values on top of the test set & store the result in ‘result_log_multi2’ 
        predict(model2,newdata = test,type = 'response')->result_log_multi2
#    c. Have a look at the range of ‘result_log_multi2’ & build a confusion matrix where the 
#       threshold of predicted values is greater than 0.49 
        range(result_log_multi2)
        table(test$gender,result_log_multi2>0.49)
        
#    d. Calculate the accuracy of the model from the confusion matrix
        cat('Accuracy:',(99+1160)/(99+1160+1122+84))
        
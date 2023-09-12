

#Module 1: Case Study 2 - Operators

#Problem Statement:
#  Sam’s next exam is on ‘Operators’. The questions will be based on what you’ve learnt in the respective module.

#Tasks to be performed:
  #1. Working with arithmetic operators:
     #a. Add 5 to the fifth record of ‘MonthlyCharges’ column
         customer_churn$MonthlyCharges[5]+5->customer_churn$MonthlyCharges[5]
     #b. Subtract 9.65 from the sixth record of ‘MonthlyCharges’ column
         customer_churn$MonthlyCharges[6]-9.65->customer_churn$MonthlyCharges[6]
     #c. Multiply the 1st record of ‘MonthlyCharges’ column with 3
         customer_churn$MonthlyCharges[1]*3->customer_churn$MonthlyCharges[1]
     #d. Divide the 37th record of ‘MonthlyCharges’ column with 3
         customer_churn$MonthlyCharges[37]/3->customer_churn$MonthlyCharges[37]
         
         
  #2. Working with the relational operators:
     #a. Check if the value of ‘tenure’ in the 1st row is greater than the value of ‘tenure’ in the 10th row
         customer_churn$tenure[1]>customer_churn$tenure[10]
     #b. Check if the value of ‘tenure’ in the 3rd row is equal to the value of ‘tenure’ in the 5th row
         customer_churn$tenure[3]==customer_churn$tenure[5]
         
         
  #3. Working with logical operators:
     #a. Get the count of those customers who have subscribed to both “TechSupport” &“StreamingTV”
         count=customer_churn[customer_churn$TechSupport=='Yes' & customer_churn$StreamingTV=='Yes',]
         print(paste("Count of Customer who subscribed to both Techsupport & StreamingTV:",nrow(count)))
         
     #b. Extract those customers whose ‘InternetService’ is either ‘DSL’ or ‘Fiber optic’ & store the result in ‘Internet_dsl_fiber’
         Internet_dsl_fiber=customer_churn[customer_churn$InternetService %in% c('DSL','Fiber optic'),]
         View(Internet_dsl_fiber)

     
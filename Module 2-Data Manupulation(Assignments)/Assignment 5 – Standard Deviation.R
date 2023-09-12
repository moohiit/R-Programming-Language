

#Module 2: Assignment 5 – Standard Deviation

#Problem Statement:
#  Jonas is assigned a task to calculate the standard deviation of different columns from
#  customer churn and placement dataset using sd() function.

#Tasks to be performed:
  #Using customer churn dataset:
  #1. Calculate the standard deviation of ‘tenure’ column and store it in sd_tenure.
      sd(customer_churn$tenure)->sd_tenure
      View(sd_tenure)
     
  #2. Calculate the standard deviation of ‘Monthly Charges’ column and store it in sd_MonthlyCharges.
      sd(customer_churn$MonthlyCharges)->sd_MonthlyCharges
      View(sd_MonthlyCharges)
      
      
  #3. Calculate the standard deviation of ‘Total Charges’ column and store it in sd_TotalCharges.
      sd(customer_churn$TotalCharges)->sd_totalCharges
      View(sd_totalCharges)
      
  #Using student’s placement dataset:
  #1. Calculate the standard deviation of etest and store it in sd_etest.
      sd(placement$etest_p)->sd_etest
      View(sd_etest)
      
  #2. Calculate the standard deviation of salary and store it in sd_salary.
      sd(placement$salary)->sd_salary
      View(sd_salary)
      
  #3. Calculate the standard deviation of percentage score by students in MBA (mba_p) and store it in sd_mba.
      sd(placement$mba_p)->sd_mba
      View(sd_mba)
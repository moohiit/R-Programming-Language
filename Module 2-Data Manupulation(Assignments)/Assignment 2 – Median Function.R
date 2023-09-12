

#Module 2: Assignment 2 – Median Function

#Problem Statement:
#  Jonas is assigned a task to calculate the median from the customer churn and placement
# dataset using median () function.

#Tasks to be performed:
  
#Using customer churn dataset:
  
#1. Calculate the median of ‘tenure’ column and store it in med_tenure.
    median(customer_churn$tenure)->med_tenure
    View(med_tenure)

#2. Calculate the median of ‘Monthly Charges’ column and store it in med_MonthlyCharges.
    median(customer_churn$MonthlyCharges)->med_monthlycharges
    View(med_monthlycharges)

#3. Calculate the median of ‘Total Charges’ column and store it in med_TotalCharges.
    median(customer_churn$TotalCharges,na.rm = T)->med_totalcharges
    View(med_totalcharges)
    
#Using student placement dataset:
  
#1. Calculate the median of percentage scored in senior secondary exams (ssc_p) and store it in med_ssc.
    median(placement$ssc_p)->med_ssc
    View(med_ssc)
    
#2. Calculate the median of scores in higher secondary exams ‘hsc_p’ and store it in med_hsc.
    median(placement$hsc_p)->med_hsc
    View(med_hsc)
    
#3. Calculate the median of percentage score by students in their respective degree (degree_p) and store it in med_degree.
    median(placement$degree_p)->med_degree
    View(med_degree)
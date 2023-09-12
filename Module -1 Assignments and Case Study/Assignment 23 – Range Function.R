

#Module 1: Assignment 23 – Range Function

#Problem Statement:
#  Jonas is working on various datasets such as customer churn, pharmacovigilance, city
#   temperature, and placement data. The dataset comprises of various numeric values. Jonas
#   is assigned a task to calculate the range of all the numeric values from the datasets.

# Tasks to be performed:
  #1. Calculate the range of following columns of customer churn dataset:
     #a. Tenure
       range(customer_churn$tenure)
     #b. Monthly Charges
       range(customer_churn$MonthlyCharges)
     #c. Total Charges
       range(customer_churn$TotalCharges)
  #2. Calculate the range of following columns of city temperature dataset:
     #a. Day
       range(temperature$Day)
     #b. Year
       range(temperature$Year)
     #c. Average Temperature
       range(temperature$AvgTemperature)
  
  #3. Calculate the range of following columns of pharmacovigilance dataset:
     #a. Age
       range(pharma$Age)
     #b. Patient ID
       range(pharma$PatientID)
       
       
  #4. Calculate the range of following columns of placement dataset:
     #a. Sl_no
       range(placement$sl_no)
     #b. Ssc_p
       range(placement$ssc_p)
     #c. Hsc_p
       range(placement$hsc_p)
     #d. Degree_p
       range(placement$degree_p)
     #e. Etest_p
       range(placement$etest_p) 
     #f. Mba_p
       range(placement$mba_p)
     #g. Salary
       range(placement$salary)
       
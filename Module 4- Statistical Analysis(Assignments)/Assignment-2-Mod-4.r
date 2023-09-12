

# Module 4: Assignment 2 – Calculating Variability & Spread

# Problem Statement:
#   Calculate Variability and Spread for the given column of the following dataset: 
#   1. Student placement 
# 2. Customer churn 
# 3. Pharmacovigilance 

#Loading required Data-sets:
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Module 1- Introduction To R\\Assignments\\customer_churn.csv",stringsAsFactors = T)->customer_churn
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Module 1- Introduction To R\\Assignments\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->pharma
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Module 1- Introduction To R\\Assignments\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->placement


# Tasks to be performed: 

#   1. Calculate the following for the ‘tenure’ column of customer churn dataset:
#   a. Mean 
       mean(customer_churn$tenure)
#   b. Median
       median(customer_churn$tenure)
#   c. Range 
       range(customer_churn$tenure)
#   d. IQR 
       IQR(customer_churn$tenure)
#   e. Variance 
       var(customer_churn$tenure)
#   f. Standard Deviation 
       sd(customer_churn$tenure)

       
# 2. Calculate the following for the ‘ssc_p’column of student placement dataset:
#   a. Mean
       mean(placement$ssc_p)
#   b. Median 
       median(placement$ssc_p)
#   c. Range 
       range(placement$ssc_p)
#   d. IQR 
       IQR(placement$ssc_p)
#   e. Variance 
       var(placement$ssc_p)
#   f. Standard Deviation 
       sd(placement$ssc_p)


# 3. Calculate the following for the ‘age’ column of pharmacovigilance dataset: 
#   a. Mean 
       mean(pharma$Age)
#   b. Median
       median(pharma$Age)
#   c. Range 
       range(pharma$Age)
#   d. IQR 
       IQR(pharma$Age)
#   e. Variance 
       var(pharma$Age)
#   f. Standard Deviation
       sd(pharma$Age)
       
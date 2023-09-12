


# Module 4: Assignment 1 – IQR


# Problem Statement:
# Calculate Interquartile Range for different columns of the following dataset: 

# 1. Student placement 
# 2. Customer churn 
# 3. Pharmacovigilance 


#Loading the dataset:
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Module 1- Introduction To R\\Assignments\\customer_churn.csv",stringsAsFactors = T)->customer_churn
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Module 1- Introduction To R\\Assignments\\Pharmacovigilance_audit_Data.csv",stringsAsFactors = T)->pharma
read.csv("E:\\Data Science Architect Master's Course\\Intellipaat\\Intellipaat Live\\Unit 1-Data Science Course\\Module 1- Introduction To R\\Assignments\\Placement_Data_Full_Class.csv",stringsAsFactors = T)->placement

# Tasks to be performed: 

#   1. Calculate the IQR (Interquartile Range) for the following 
#      columns of the placement dataset: 
#  a. hsc_p 
      IQR(placement$hsc_p)
#  b. ssc_p 
      IQR(placement$ssc_p)
#  c. degree_p 
      IQR(placement$degree_p)
#  d. mba_p 
      IQR(placement$mba_p)
#  e. etest_p 
      IQR(placement$etest_p)

# 2. Calculate the IQR (Interquartile Range) for the following columns
#    of the customer churn dataset: 
#  a. TotalCharges 
      IQR(customer_churn$TotalCharges,na.rm = T)
#  b. MonthlyCharges 
      IQR(customer_churn$MonthlyCharges)
#  c. Tenure 
      IQR(customer_churn$tenure)

# 3. Calculate the IQR (Interquartile Range) for the following columns
#    of the pharmacovigilance dataset: 
#  a. Age 
      IQR(pharma$Age)
#  b. PatientI
      IQR(pharma$PatientID)
      
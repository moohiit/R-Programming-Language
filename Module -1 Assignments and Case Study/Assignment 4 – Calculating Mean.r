#Module 1: Assignment 4 – Calculating Mean

#Tasks to be performed:

#1. Calculate the mean of the following columns from customer churn dataset:
 # Importing dataset:
 customer_churn=read.csv("E:\\Data Science Architect Master's Course\\Intellipaat Live\\Unit 1-Data Science Course\\Assignments\\customer_churn.csv")
  #a. Tenure
   mean1=mean(customer_churn$tenure)
   print(mean1)
  #b. Monthly Charges
   mean2=mean(customer_churn$MonthlyCharges)
   print(mean2)
  #c. Total Charges
   mean3=mean(customer_churn$TotalCharges)
   print(mean3)
#2. Calculate the mean of the following columns from the placement dataset:
   # Importing Dataset:
   placement=read.csv("E:\\Data Science Architect Master's Course\\Intellipaat Live\\Unit 1-Data Science Course\\Assignments\\Placement_Data_Full_Class.csv")
  
   #a. Ssc_p
   mean4=mean(placement$ssc_p)
   print(mean4)
   
   #b. Hsc_p
   mean5=mean(placement$hsc_p)
   print(mean5)
  
   #c. Degree_p
   mean6=mean(placement$degree_p)
   print(mean6)
   
   #d. Etest_p
   mean7=mean(placement$etest_p)
   print(mean7)
   
   #e. Mba_p
   mean8=mean(placement$mba_p)
   print(mean8)
   
   #f. Salary
   mean9=mean(placement$salary)
   print(mean9)    # it will give you "NA" as mean since salary column consist of many null values.
   
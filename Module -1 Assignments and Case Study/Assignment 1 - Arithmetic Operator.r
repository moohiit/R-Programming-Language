#Module 1: Assignment 1 - Arithmetic Operator

#Problem Statement:
  #Jonas is working on customer churn dataset and his task is to analyze the customers data.
  #He is assigned a task do some data exploration by performing certain operations on the data.

#Tasks to be performed:
 
#1. Perform the following operations on the dataset using arithmetic operator:

# Importing Dataset:
dataset=read.csv("E:\\Data Science Architect Master's Course\\Intellipaat Live\\Unit 1-Data Science Course\\Assignments\\customer_churn.csv",stringsAsFactors = T)

  #a) Increase the monthly charges of 1st record by 5.
  dataset$MonthlyCharges[1]+5->dataset$MonthlyCharges[1]

  #b) Increase the monthly charges of the 5th record by 22.
  dataset$MonthlyCharges[5]+22->dataset$MonthlyCharges[5]
  
  #c) Reduce the total charges of the 4th record by 40.75.
  dataset$TotalCharges[4]-40.75->dataset$TotalCharges[4]
  
  #d) Subtract the total charges from 2nd record by 100.
  dataset$TotalCharges[2]-100->dataset$TotalCharges[2]
  
  #e) Reduce the monthly charges of the 25th record by 4.6 and divide it by 5.
  dataset$MonthlyCharges[25]-4.6 ->dataset$MonthlyCharges[25]
  dataset$MonthlyCharges[25]/5->dataset$MonthlyCharges[25]
  
  #f) Increase the value of the total charge of the 5th record by 5.3 and multiply it by 2.
  dataset$TotalCharges[5]+5.3->dataset$TotalCharges[5]
  dataset$TotalCharges[5]*2->dataset$TotalCharges[5]
  
  #g) Multiply the 12th record of monthly charges by 5.
  dataset$MonthlyCharges[12]*5->dataset$MonthlyCharges[12]
  
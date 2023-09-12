

#Module 1: Assignment 19 – str() Function


#Problem Statement:
#  Use str() function to know about the different data types assigned to the columns of the dataset.


#Tasks to be performed:
  
#1. Find the structure of customer churn dataset using str() function and perform the following operations:
str(customer_churn)
  
#a. Convert the data type of internet service column from vector to character.
as.character(customer_churn$InternetService)->customer_churn$InternetService

#b. Convert the data type of partner column from vector to character.
as.character(customer_churn$Partner)->customer_churn$Partner

#c. Convert the data type of total charges column from num to int.
as.integer(customer_churn$TotalCharges)->customer_churn$TotalCharges

#2. Find the structure of the placement data.
str(placement)

#3. Find the structure of the pharmacovigilance data.
str(pharma)

#4. Find the structure of city temperature dataset.
str(temperature)



#Module 1: Assignment 15 – Table() Function

#Problem Statement:
#  Jonas is given a dataset to analyze and extract information out of it. To understand the
#   data he has to perform certain tasks. So, the tasks that he lists down for accomplishing is given below.


#Tasks to be performed:

#1. Check the categories of various columns given below using table function and
#   extract the data of male customers who are senior citizens with partners internet
#   service as DSL along with services such as phone services enabled :

     data=customer_churn[customer_churn$SeniorCitizen==1 &customer_churn$InternetService=='DSL' & 
                      customer_churn$gender=='Male'& customer_churn$PhoneService=='Yes',]
     View(data)
  
     #a. Gender
     table(customer_churn$gender)
  
     #b. Senior Citizen
     table(customer_churn$SeniorCitizen)
   
     #c. Partner
     table(customer_churn$Partner)
  
     #d. Columns
     table(customer_churn$columns)
  
     #e. Dependents
     table(customer_churn$Dependents)
  
     #f. Phone Service
     table(customer_churn$PhoneService)
  
     #g. Multiple Lines
     table(customer_churn$MultipleLines)
  
     #h. Internet Service
     table(customer_churn$InternetService)
  
     #i. Online Security
     table(customer_churn$OnlineSecurity)
  
     #j. Online Backup
     table(customer_churn$OnlineBackup)
  
     #k. Contract
     table(customer_churn$Contract)
  
     #l. Payment Method
     table(customer_churn$PaymentMethod)
     
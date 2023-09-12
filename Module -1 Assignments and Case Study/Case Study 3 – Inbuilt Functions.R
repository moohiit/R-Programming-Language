

#Module 1: Case Study 3 – Inbuilt Functions
#Problem Statement:
#  Sam’s next exam is on Inbuilt Functions. The questions will be based on what you’ve learnt in the respective module.
#Tasks to be performed:
  #1. Do these operations with the head() function:
     #a. Get the first 4 records from ‘PhoneService’ column
         head(customer_churn$PhoneService,4)
     #b. Get the first 8 records from ‘Contract’ column
         head(customer_churn$Contract,8)
         
         
  #2. Do these operations with the tail() function:
     #a. Get the last record of ‘TotalCharges’ column
         tail(customer_churn$TotalCharges)
     #b. Get the last 5 records of ‘tenure’ column
         tail(customer_churn$tenure,5)
         
         
  #3. Find the average, minimum, maximum & range from the ‘tenure’ column
         #Average;
         mean(customer_churn$tenure)
         #minimum:
         min(customer_churn$tenure)
         #maximum:
         max(customer_churn$tenure)
         # Range:
         range(customer_churn$tenure)
         
         
  #4. Get 10 random values from the ‘TotalCharges’ column using sample()
         sample(customer_churn$TotalCharges,10)->sample_totalcharges
         sample_totalcharges
         
  #5. Find the count of different levels in ‘PaymentMethod’ & ‘Contract’ columns using table()
         # Table for PaymentMethod:
         table(customer_churn$PaymentMethod)
         # Table for Contract:
         table(customer_churn$Contract)
         
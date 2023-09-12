

#Module 2: Assignment 3 – Mutate Function

#Problem Statement:
#  Jonas has performed data manipulation using filter() and select(). Jonas realizes the need
#  of adding certain columns of the customers to the dataset. Now, further Jonas wants to
#  manipulate data by adding age column to the dataset using mutate() function. He lists
#  down the tasks that need to be performed.


##Tasks to be performed:
#1. Add a column named ‘Age’ and assign a random value in customer churn dataset
#   that lies within a range using sample() function based in the following conditions:
  #a. If the customer is a senior citizen (SeniorCitizen==1), then the age assigned
  #   to the customer lies between 56 and 100.
  #b. If the customer is not a senior citizen (SeniorCitizen==0), then the age
  #   assigned to the customers lies between 16:55
    mutate(customer_churn,Age=ifelse(SeniorCitizen==1,sample(x=56:100),sample(x=16:55)))->new
    View(new)


#2. Create a column named ‘Customer_Category’ based on the following condition:
  #a. The customers whose monthly charges are less than 45 will be named as ‘Low Paying’ customers.
  #b. The customers whose monthly charges are less than ‘90’ will be named as ‘Medium Paying’ customers.
  #c. The customers whose monthly charges are greater than ‘90’ will be named as ‘High Paying’ customers.
      mutate(customer_churn,Customer_Category=ifelse(MonthlyCharges<45,'Low Paying',ifelse(MonthlyCharges<90,'Medium Paying','High Paying')))->pay_category
      View(pay_category)
      
      
#3. Create a column named “Security” based on the following condition:
  #a. The customers who have opted for ‘Online Security’ will be marked as ‘Secure’.
  #b. The customers who have not opted for ‘Online Security’ will be marked as ‘Not Secure’.
      mutate(customer_churn,Security=ifelse(OnlineSecurity=='Yes','Secure','Not Secure'))->security
      View(security)
      
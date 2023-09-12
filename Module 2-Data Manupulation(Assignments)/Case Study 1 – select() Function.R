
#Module 2: Case Study 1 – select() Function

#Problem Statement:
#  Sam has successfully completed his first semester. In the second semester he will be learning
#  some data manipulation operations.Sam’s first exam would be on the select() function from the dplyr package.
#Tasks to be performed: 
#1. Extract these individual columns:
  #a. Extract the 5th column & store it in ‘customer_5’
      select(customer_churn,5)->customer_5
      View(customer_5)
  #b. Extract the 15th column & store it in ‘customer_15’
      select(customer_churn,15)->customer_15
      View(customer_15)

#2. Extract the column numbers 3,6,9,12,15 & 18 and store the result in ‘customer_3_multiple’
      select(customer_churn,3,6,9,12,15,18)->cusomer_3_multiple
      View(customer_3_multiple)

#3. Extract all the columns from column number-10 to column number-20 and store the result in ‘c_10_20’
      select(customer_churn,10:20)->c_10_20
      View(c_10_20)
      
      
#4. Extract all the columns which start with letter ‘P’ & store it in ‘customer_P’
      select(customer_churn,starts_with('p'))->customer_p
      View(customer_p)

#5. Extract all the columns which end with letter ‘s’ & store it in ‘customer_s’
      select(customer_churn,ends_with('s'))->customer_s
      View(customer_s)
      
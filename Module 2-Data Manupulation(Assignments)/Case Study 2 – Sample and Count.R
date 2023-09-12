
#Module 2: Case Study 2 – Sample and Count
#Problem Statement:
#  Sam’s next exam would be on sample_n(), sample_frac() & count() functions from the
#  dplyr package. You would be asked questions on what you’ve learnt from the respective module.
#Tasks to be performed:
  #1. Extract 333 random records from the customer_churn dataframe & store the result in ‘customer_333’
      sample_n(customer_churn,333)->customer_333
      View(customer_333)
  #2. Extract 1000 random records from the customer_churn dataframe & store the result in ‘customer_1000’
      sample_n(customer_churn,1000)->customer_1000
      View(customer_1000)

  #3. Randomly extract 23% of the records from the customer_churn dataframe & store the result in ‘customer_23_percent’
      sample_frac(customer_churn,.23)->customer_23_percent
      View(customer_23_percent)
  #4. Get the count of different levels from the ‘PaymentMethod’ column
      count(group_by(customer_churn,PaymentMethod),PaymentMethod)

  #5. Get the count of different levels from the ‘Churn’ column
      count(group_by(customer_churn,Churn),Churn)
      


#Module 2: Case Study 4 – sqldf
#Problem Statement:
  #Sam’s next exam would be on the sqldf package. You would be asked questions on what
#you’ve learnt from the respective module.
#Tasks to be performed:

#1. Select the ‘OnlineBackup’ column from the customer_churn dataframe & store the result in ‘customer_onine_backup’
    sqldf("select OnlineBackup from customer_churn")->customer_onlineBackup
    View(customer_onlineBackup)
    
#2. Select the ‘StreamingTV’, ‘StreamingMovies’ & ‘Contract’ columns and store the result in
#   ‘customer_streaming_contract’
    sqldf("select StreamingTV, StreamingMovies, Contract from customer_churn")->customer_streaming_contract
    View(customer_streaming_contract)

#3. Select all the customers whose payment method is ‘mailed check’ and store the result in ‘customer_mail’
    sqldf("select * from customer_churn where PaymentMethod='Mailed check'")->customer_mail
    View(customer_mail)
    
#4. Select all the Female customers whose tenure is of 1 month & Payment Method is ‘mailed
#check’ and store the result in ‘customer_random_selection
    sqldf("select * from customer_churn where gender='Male' and tenure=1 and PaymentMethod='Mailed check'")->customer_random_selection
    View(customer_random_selection)
    


#Module 1: Case Study 1 - Data Exploration

#Problem Statement:
#  Consider yourself to be Sam, who is undertaking the data science course at a prestigious university. Your first 
#  exam would be on Data Exploration. You will be asked questions on what you’ve learnt in the respective module.

#Tasks to be performed:
  #1. Extract these individual columns with the ‘$’ symbol:
    #a. Extract ‘Internet Service’ column and store it in ‘customer_internet_service’
        custumer_internet_service=customer_churn$InternetService
        View(custumer_internet_service)
    #b. Extract ‘Paperless Billing’ column and store it in ‘customer_Paperless_Billing’
        customer_paperless_Billing=customer_churn$PaperlessBilling
        View(customer_paperless_Billing)
    #c. Extract ‘Streaming TV’ column and store it in ‘customer_Streaming_TV’
        customer_streaming_TV=customer_churn$StreamingTV
        View(customer_streaming_TV)
  

  #2. Extract the 3rd, 6th and 9th columns from the ‘customer_churn’ data.frame & store it in ‘customer_random_columns’
        customer_random_columns=customer_churn[,c(3,6,9)]
        View(customer_random_columns)
  

  #3. Extract all the columns from column number-10 to column-number 20 and store the result in ‘customer_10_20’
        customer_10_20=customer_churn[,c(10:20)]
        View(customer_10_20)
    

  #4. Extract only these row numbers: 65, 765, 3726 & 7000 and store the result in ‘customer_random_rows’
        customer_random_rows=customer_churn[c(65,765,3726,7000),]
        View(customer_random_rows)
  

  #5. Extract all the rows starting from row number-655 to row number-6550 & store the result in ‘customer_continuous_rows’
        customer_continous_rows=customer_churn[c(655:6550),]
        View(customer_continous_rows)
   

  #6. Extract row numbers- 10, 100 & 1000 & column numbers- 5, 10, 15 & store the result in ‘customer_random_data’
        customer_random_data=customer_churn[c(10,100,1000),c(5,10,15)]
        View(customer_random_data)

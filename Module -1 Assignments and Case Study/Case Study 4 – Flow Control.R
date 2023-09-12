

#Case Study 4-Flow Control 

#Problem Statement:
#  Sam’s next exam is on ‘Flow Control Statements’. The questions will be based on what you’ve learnt in the respective module.
#Questions:
  #1. Check if the value in the 6th cell of ‘PaymentMethod’ column is ‘Electronic check’. If yes, print “Yes, the payment method is Electronic check”
      if(customer_churn$PaymentMethod[6]=='Electronic check'){
        print("Yes, the payment method is Electronic check.")
      }

#2. Check the value present in 12th cell of ‘Contract’ column.
    #If it’s ‘month-to-month’, print ‘The contract is on a month to month basis’
    #If it’s ‘One year’, print ‘The contract is on a yearly basis’
    #If it’s ‘Two year’, print ‘The contract is on a two-year basis’
     
       if(customer_churn$Contract[12]=='Month-to-month'){
        print("The contract is on a month to month Basis.")
      }else if (customer_churn$Contract[12]=='One year'){
        print("The contract is on One a Yearly basis.")
      }else if(customer_churn$Contract[12]=='Two year'){
        print("The contract is on a two-yearly basis.")
      }
      
#3. Use switch to check the gender in 6th cell of ‘gender’ column.
    #If it’s ‘Male’, give a discount of 20% in ‘MonthlyCharges’
    #If it’s ‘Female’, give a discount of 50% in ‘MonthlyCharges’
      
      if(customer_churn$gender[6]=='Male'){
        customer_churn$MonthlyCharges[6]=customer_churn$MonthlyCharges[6]*.80
      }else if(customer_churn$gender[6]=='Female'){
        customer_churn$MonthlyCharges[6]=customer_churn$MonthlyCharges[6]*.50
      }
      
#4. Use for loop to get the count of customers whose ‘InternetService’ is ‘DSL’
      count=0
      for(i in 1:nrow(customer_churn)){
        if(customer_churn$InternetService[i]=='DSL'){
          count=count+1
        }
      }
      print(paste("Count of Internet services as 'DSL':",count))
      
      # Lets verify results by using table function:
      table(customer_churn$InternetService)
      
#5. Use while to find the number of customers whose tenure is exactly ‘2’ months
      i=1
      count=0
      while(i<=nrow(customer_churn)){
        if(customer_churn$tenure[i]==2){
          count=count+1
        }
        i=i+1
      }
      print(paste("count of customers whose tenure is exactly 2 months:",count))


#Module 1: Assignment 21 – Lists


#Problem Statement:
#  Sam is given the below task for understanding List.


#Tasks to be performed:
  
#1. Create a list named internet_service using the following condition:
  #a. A character vector that consists of name of the internet services as “DSL”,
  #    “Fiber Optic”, “Cable Broadband”, and “Wireless”.
    internet_service=list('DSL','Fiber Optic','Cable Broadband','Wireless')
    View(internet_service)
    


  #b. A numeric vector that consists of values from 30 to 40
    num_vector=c(30:40)
    num_vector
  
  #c. A logical vector having 6 values as: True, False, True, True, True, and False
    logical_vector=c(T,F,TRUE,TRUE,TRUE,FALSE)
    logical_vector

  #2. Create a list named payment_method using the following condition:
    #a. A character vector comprising of payment methods as: ‘Electronic Check’, ‘Mailed Check’, ‘Credit Card’, and ‘Online Transfer’.
    payment=c('Electronic Check','Mailed check','Credit Card','Online Transfer')
    class(payment)
    #b. A numeric vector that consists of values from 85-95
    number=c(85:95)
    class(number)
    #c. A logical vector having 6 values as: True, True, False, True, False, and True.
    logical=c(TRUE,TRUE,FALSE,TRUE,FALSE,TRUE)
    class(logical)
    
    #list of above vectors:
    payment_method=list(payment,number,logical)
    class(payment_method)
    View(payment_method)

#3. Create a list named contract_list using the following condition:

    #a. A character vector comprising of contract type as: “Month to month”, “One Year”, “Two Year”, and “Three Year”.
    #b. A numeric vector comprising of five values as: ‘1’, ‘12’, ‘17’, ‘32’, and ‘72’.
    #c. A logical vector comprising of four values: True, False, True, and True.
    
    #Creating the list of above mentioned vectors:
    contract_list=list(c('Month to Month','One Year','Two Year','Three Year'),c('1','12','17','32','72'),c(TRUE,FALSE,TRUE,TRUE))
    #printing the list:
    print(contract_list)
    #checking the class of individual elements of the list:
    class(contract_list[[1]][1])
    #Access the elements of the list:
    contract_list[[1]][1]
    
    

    #i. Now, extract the 2nd value from the first element of the list
    contract_list[[1]][2]

    #ii. Extract the 3rd value from the 2nd element of the list
    contract_list[[2]][3]
    
    #iii. Extract the 4th value from the 1st element of the lists
    contract_list[[1]][4]
    
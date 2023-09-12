

#Module 1: Assignment 10 – While Loop

#Problem Statement:
#  Sam is working on control flow statements. He has to calculate the number of different
#  categories of attributes for various columns of the dataset using while loop.


#Tasks to be performed:

#1. Calculate the number higher secondary students who are from “Central” board.

    i=1
    count=0
    while(i<nrow(placement)){
      if(placement$ssc_b[i]=='Central'){
        count=count+1
      }
      i=i+1
    }
    print(count)

#2. Calculate the number of students who are from Science stream and secured percentage greater than 75.

    i=1
    count=0
    while(i<nrow(placement)){
      if(placement$hsc_s[i]=="Science" && placement$degree_p[i]>75.0){
        count=count+1
      }
      i=i+1
    }
    cat("Total no. of the student who are from science stream and secured more than '75%':",count)
    

#3. Calculate the number of customers from customer churn dataset as per following condition:

#(i). The customer should be a senior citizen who is having a contract of
#     ‘One year’ for ‘Fiber optic’ there as internet service.
    
    i=1
    count=0
    while(i<nrow(customer_churn)){
      if(customer_churn$Contract[i]=='One year' && customer_churn$InternetService[i]=="Fiber optic"){
        count=count+1
      }
      i=i+1
    }
    cat("Total no. of customers having one year plan and using Fiber Optic:",count)


#(ii). The customer is not a senior citizen who is having a contract of ‘Two
#       year’ and total charges is less than 7000.
    customer_churn$TotalCharges=as.integer(customer_churn$TotalCharges)
    
    i=1
    count=0
    while(i<nrow(customer_churn)){
      if(customer_churn$SeniorCitizen[i]==0 && customer_churn$TotalCharges[i]<7000){
        count=count+1
      }
      i=i+1
    }
    cat("Total no. customers who are not a Seniorcitizen and paying totalcharges greater than '7000':",count)

    # it will give you an error because there many null valueas in Totalcharges column.
    
    

#(iii). The customers whose monthly charges are greater than 65.
    
    i=1
    count=0
    while(i<nrow(customer_churn)){
      if(customer_churn$MonthlyCharges[i]>65){
        count=count+1
      }
      i=i+1
    }
    print("Total No. Such customers:")
    print(count)



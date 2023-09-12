

#Module 1: Assignment 7 – If-Else


#Tasks to be performed:
 
 #Using the placement data-set, perform the following tasks:


#a. Check the value of 95th row of status column.
 #If the value is “Placed”, then print “The student is placed from campus placement drives”.
 #If it’s “Not Placed”, then print “The student is not placed from campus placement drives.”
 #If it’s “NA”, then print “The data of the student is not available.”'''
  
  if(placement$status[95]=='Placed') {
    cat("The student is placed from campus placement drives")
  }else if(placement$status[95]=='Not Placed') {
    cat("The student is not placed from campus placement drives")
  }else {
    cat("The data of the student is not available")
  }
  
  

#b. Check the value of 64th row of hsc_s column.
 #If it is “Science”, then print “The subject opted by the student is Science.”
 #If it is “Commerce”, then print “The subject opted by the student is Commerce.”
 #If it is “Arts”, then print “The subject opted by the student is Arts.”
  
  if(placement$hsc_s[64]=='Science'){
    cat("The subject opted by the student is Science")
  }else if(placement$hsc_s[64]=='Commerce'){
    cat("The subject opted by the student is Commerce")
  }else {
    cat("The subject opted by the student is Arts")
  }


#c. Check the 28th row of Payment method column:
 #If it is “Credit card (automatic)”, then print”The customer is using credit card as their payment method.”
 #If it is “Mailed check”, then print “The customer is using mailed check for payment.”
 #If it is “Electronic check”, then print “The customer is using electronic check for payment.”
  
  if(customer_churn$PaymentMethod[28]=='Credit card (automatic)'){
    cat("The customer is using credit card as their payment method.")
  }else if(customer_churn$PaymentMethod[28]=='Mailed check'){
    cat("The customer is using mailed check for payment.")
  }else if(customer_churn$PaymentMethod[28]=='Electronic check'){
    cat("The customer is using electronic check for payment.")
  }else {
    cat("The customer is using other payment for payment.")
  }
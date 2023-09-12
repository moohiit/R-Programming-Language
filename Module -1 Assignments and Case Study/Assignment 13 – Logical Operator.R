


#Module 1: Assignment 13 – Logical Operator


#Problem Statement:
# Jonas is working on a customer churn dataset. He is assigned a task to extract data on basis of certain condition to analyze it.


#Tasks to be performed:
#1. Extract the data of customers as per the following conditions:
  #a. People who are senior citizen of gender female.
    # solution 1:
    subset1=customer_churn[which(customer_churn$gender=='Female' & customer_churn$SeniorCitizen==1),]
    View(subset1)
    
    #solution 2:
    subset2=customer_churn[customer_churn$gender=='Female' & customer_churn$SeniorCitizen==1,]
    View(subset2)
    
    #Solution 3:
    subset3=subset(customer_churn,customer_churn$gender=='Female'& customer_churn$SeniorCitizen==1)
    View(subset3)

#b. Female customers who are not having partner.
    
    subset4=customer_churn[customer_churn$Partner=='No' & customer_churn$gender=='Female',]
    View(subset4)

    
    
#c. Customers using ‘DSL’ as their internet service with no online security.
    
    subset5=customer_churn[customer_churn$InternetService=='DSL' & customer_churn$OnlineSecurity=='No',]
    View(subset5)

#d. Customers using ‘Fiber optics’ as internet service with no online backup.
    subset6=customer_churn[customer_churn$InternetService=='Fiber optic' & customer_churn$OnlineBackup=='No',]
    View(subset6)
    

#e. Senior citizens using payment method as electronic check.
    subset7=customer_churn[customer_churn$SeniorCitizen==1 & customer_churn$PaymentMethod=='Electronic check',]
    View(subset7)
    

#2. Extract the data of customers who are:

#a. Using payment method as mailed check and having a contract of one year
    subset8=customer_churn[customer_churn$PaymentMethod=='Mailed check' & customer_churn$Contract=='One year',]
    View(subset8)

#b. Having services such as online security, online backup, device protection, and tech support enabled
    subset9=customer_churn[customer_churn$OnlineSecurity=='Yes' & customer_churn$OnlineBackup=='Yes'
                           & customer_churn$DeviceProtection=='Yes'& customer_churn$TechSupport=='Yes', ]
    View(subset9)

#c. Not senior citizens having tenure of 72 months.
    subset10=customer_churn[customer_churn$SeniorCitizen==0 & customer_churn$tenure==72,]
    View(subset10)

#3. Check the customers data where the customer’s are:

#a. Either using bank transfer or credit card as their payment method.
    subset11=customer_churn[customer_churn$PaymentMethod %in% c('Bank transfer (automatic)','Credit card (automatic)'),]
    View(subset11)

#b. Having phone service or multiple lines enabled.
    subset12=customer_churn[customer_churn$PhoneService=='Yes' | customer_churn$MultipleLines=='Yes',]
    View(subset12)
    
#c. Either having payment method as mailed check or electronic check.
    subset13=customer_churn[customer_churn$PaymentMethod %in% c('Mailed check','Electronic check'),]
    View(subset13)
    
#d. Either using fiber optic or having no internet service.
    
    #first way:
    subset14=customer_churn[customer_churn$InternetService=='Fiber optic' | customer_churn$InternetService=='No',]
    View(subset14)
    
    #second way:
    sub=customer_churn[customer_churn$InternetService %in% c("Fiber optic","No"),]
    View(sub)
    
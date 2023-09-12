

# Module 3: Assignment 1 – Aes Attribute

# Problem Statement:
#   John works in a company which provides internet service to the customers. He has to
#   visualize the data of customers using graphs. For this, he requires the knowledge of
#   various attributes of graphs and one of them is ‘aes’. John will perform certain tasks using
#   ‘aes’ attribute.

# Tasks to be performed:

#   1. Create the following bar-plot where:
# a. PhoneService column is assigned to the x aesthetic.
     ggplot(data=customer_churn,aes(x=PhoneService))+geom_bar(col='black',fill='aquamarine')

# b. Gender column is assigned to the x aesthetic.
     ggplot(data=customer_churn,aes(x=gender))+geom_bar(fill='red',col='black')

# c. InternetService is assigned to x aesthetic and MonthlyCharges to aesthetic.
     ggplot(data=customer_churn,aes(x=InternetService,fill=MonthlyCharges))+geom_bar()
     
# d. MonthlyCharges is assigned to x aesthetic and SeniorCitizen to aesthetic.
     ggplot(data=customer_churn,aes(x=MonthlyCharges,fill=SeniorCitizen))+geom_bar()
     
# e. TotalCharges is assigned to x aesthetic and Tenure to aesthetic.
     ggplot(data = customer_churn,aes(x=TotalCharges,fill=tenure))+geom_bar()
     
# f. StreamingTV is assigned to x aesthetic and SeniorCitizen to aesthetic.
     ggplot(data = customer_churn,aes(x=StreamingTV,fill=SeniorCitizen))+geom_bar()
     
# g. Dependents is assigned to x aesthetic and Partner to aesthetic.
     ggplot(data = customer_churn,aes(x=Dependents,fill=Partner))+geom_bar()
     
     



# Case Study 4- geom_point() Function 

# Problem Statement:
#   Sam’s next exam is on ‘geom_point()’ function from the ggplot2 package. The questions will be asked on
#   the basis of what you’ve learnt in the respective module.

# Questions:
# 1. Build a scatter-plot between ‘TotalCharges’ & ‘tenure’. Map ‘TotalCharges’ to the y-axis &
#   ‘tenure’ to the ‘x-axis’
# a. Assign it the color ‘wheat3’
     ggplot(data = customer_churn,aes(y=TotalCharges,x=tenure))+geom_point(col='wheat3')
     
# b. Use ‘col’ as an aesthetic and Map ‘PaymentMethod’ to col
     ggplot(data = customer_churn,aes(y=TotalCharges,x=tenure,col=PaymentMethod))+geom_point()
     
# c. Use ‘col’ as an aesthetic and Map ‘gender’ to col
     ggplot(data = customer_churn,aes(y=TotalCharges,x=tenure,col=gender))+geom_point()
     
# d. Map ‘Dependents’ to both ‘col’ & ‘shape’ aesthetics
     ggplot(data = customer_churn,aes(y=TotalCharges,x=tenure,col=Dependents,shape=Dependents))+geom_point()


# 2. Build a scatter-plot between ‘tenure’ & ‘MonthlyCharges’. Map ‘tenure’ to the y-axis &
#   ‘MonthlyCharges’ to the ‘x-axis’
# a. Assign it the color ‘yellowgreen’
     ggplot(data = customer_churn,aes(x=tenure,y=MonthlyCharges))+geom_point(col='yellowgreen')
     
# b. Use ‘col’ as an aesthetic and Map ‘InternetService’ to col
     ggplot(data = customer_churn,aes(x=tenure,y=MonthlyCharges,col=InternetService))+geom_point()
     
     
# c. Use ‘col’ as an aesthetic and Map ‘Contract’ to col
     ggplot(data = customer_churn,aes(x=tenure,y=MonthlyCharges,col=Contract))+geom_point()
     



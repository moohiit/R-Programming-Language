

# Case Study 3-geom_histogram() Function 

# Problem Statement:
#   Sam’s next exam is on ‘geom_histogram()’ function from the ggplot2 package. The questions will be
#   asked on the basis of what you’ve learnt in the respective module.

# Questions:
# 1. Build a histogram for the ‘tenure’ column
# a. Assign the fill color to be ‘mediumspringgreen’
# b. Assign the boundary color to be ‘azure’
# c. Change the number of bins to be 100
     ggplot(data = customer_churn,aes(tenure))+geom_histogram(fill='mediumspringgreen',col='azure',bins=100)

# 2. Build histogram for the ‘MonthlyCharges’ column
# a. Assign ‘PaymentMethod’ to the fill aesthetic
# b. Assign ‘OnlineBackup’ to the fill aesthetic
     ggplot(data = customer_churn,aes(MonthlyCharges,fill=PaymentMethod))+geom_histogram()
     
     ggplot(data = customer_churn,aes(MonthlyCharges,fill=OnlineBackup))+geom_histogram()
     
     
# 3. Build histogram for the ‘TotalCharges’ column
# a. Assign ‘gender’ to the fill aesthetic
# b. Assign ‘InternetService’ to the fill aesthetic
     ggplot(data = customer_churn,aes(TotalCharges,fill=gender))+geom_histogram()
     
     ggplot(data = customer_churn,aes(TotalCharges,fill=InternetService))+geom_histogram()
     
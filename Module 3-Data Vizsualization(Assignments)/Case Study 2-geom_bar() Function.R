
# Case Study 2- geom_bar() Function 

# Problem Statement:
#   Sam’s next exam is on ‘geom_bar()’ function from the ggplot2 package. The questions will be asked on
#   the basis of what you’ve learnt in the respective module.

# Questions:
# 1. Build a bar-plot for the ‘PhoneService’ column
# a. Assign the fill color to be ‘pink’
# b. Assign the boundary color to be ‘peru’
     ggplot(data = customer_churn,aes(PhoneService))+
       geom_bar(fill='pink',col='peru')

# 2. Build a bar-plot for the ’InternetService’ column
# a. Assign ‘InternetService’ to the fill aesthetic
# b. Assign ‘Contract’ to the fill aesthetic
# c. Change the position of bars to ‘identity’
     ggplot(data = customer_churn,aes(InternetService,fill=Contract))+
      geom_bar(position = 'identity')

# 3. Build a bar-plot for ‘TechSupport’ column
# a. Assign ‘Churn’ to the fill aesthetic
     ggplot(data = customer_churn,aes(TechSupport,fill=Churn))+geom_bar()
     


# Base Graphics Case Study

# Problem Statement:
#   Sam is in his third semester. He will learn the concepts of visualization in this semester.
#   The first exam is on ‘Base Graphics’ in R. Questions would be asked on the basis of what you’ve learnt in
#   the respective module

# Questions:
# 1. Create a bar-plot for the ‘PaymentMethod’ column.
# a. Assign the color ‘burlywood4’
# b. Assign the x-axis label to be “Payment Method”
# c. Assign the title to be “Bar-Plot for Payment Method”
     plot(customer_churn$PaymentMethod,col="burlywood4",
     xlab='Payment Method',main='Bar plot for Payment Method')

# 2. Create a histogram for the ‘TotalCharges’ column
# a. Assign the color ‘forestgreen’
# b. Assign the x-axis label to be “Total Charges”
# c. Assign the title to be “Histogram for Total Charges”
     hist(customer_churn$TotalCharges,xlab = 'TotalCharges',
          col='forestgreen',main = 'Histogram of Total Charges')



# 3. Create a density plot for the ‘TotalCharges’ column
# a. Assign the color ‘maroon’
# b. Assign the x-axis label to be “Total Charges”
# c. Assign the title to be “Density plot for Total Charges”
     na.omit(customer_churn)->customer_churn1
     plot(density(customer_churn1$TotalCharges),col='maroon',
      xlab = 'Total Charges',main = 'Density plot for Total charges')
     
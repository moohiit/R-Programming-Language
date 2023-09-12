

#Module 2: Case Study 3 – summarise()

#Problem Statement:
#  Sam’s next exam would be on the summarise() function from the dplyr package. You would
#  be asked questions on what you’ve learnt from the respective module.
#Tasks to be performed:
  #1. Get the median, variance & standard deviation for the ‘tenure’ column
      cat("Median variance and standard deviation for tenure column:")
      summarise(customer_churn,median=median(tenure),variance=var(tenure),STD=sd(tenure))

  #2. Get the median, variance & standard deviation for the ‘MonthlyCharges’ column
      summarise(customer_churn,meadian_MC=median(MonthlyCharges),variance_MD=var(MonthlyCharges),STD_MC=sd(MonthlyCharges))

  #3. Get the standard deviation of ‘tenure’ & group it w.r.t ‘PaymentMethod’ column
      summarise(group_by(customer_churn,PaymentMethod),std_tenure=sd(tenure))

  #4. Get the median of ‘MonthlyCharges’ & group it w.r.t ‘Contract’ column
      summarise(group_by(customer_churn,Contract),median_monthlyCharges=median(MonthlyCharges))

  #5. Get the variance of ‘TotalCharges’ & group it w.r.t ‘InternetService’ column
      summarise(group_by(customer_churn,InternetService),Variance_TotalCharges=var(TotalCharges,na.rm = T))
      
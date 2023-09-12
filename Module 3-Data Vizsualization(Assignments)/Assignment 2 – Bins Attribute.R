

# Module 3: Assignment 2 – Bins Attribute

# Problem Statement:

#   Sam is using histograms for data visualization. He wants to create histograms with more
#   number of bins. Thus, he lists down the tasks to add more bins to the histogram using
#   ‘bins’ attribute for customer churn and pharmacovigilance dataset.

# Tasks to be performed:

# 1. Create a histogram for ‘Age’ column using pharmacovigilance dataset:
# a. Set number of bins to 100.
# b. Assign as color ‘azure’ to the histogram.
# c. Assign a color ‘white’ to the ‘fill’ attribute in geom_histogram function.
     ggplot(data = pharma,aes(x=Age))+geom_histogram(bins = 100,fill='white',col='azure')
     
# 2. Create a histogram for ‘Patient ID’ using pharmacovigilance dataset:
# a. Assign a color ‘wheat3’ to the plot.
# b. Set number of bins to 50.
# c. Assign a color ‘black’ to the ‘fill’ attribute in geom_histogram function.
     ggplot(data = pharma,aes(x=PatientID))+geom_histogram(col='wheat3',fill='black',bins = 50)
     
# 3. Create a histogram using customer churn dataset:
# a. Assign ‘MonthlyCharges’ column to the x-axis.
# b. Set the number of bins to 80.
# c. Assign a color ‘violet’ to the bars.
# d. Assign a color ‘white’ to the ‘fill’ attribute in geom_histogram function.
     ggplot(data = customer_churn,aes(MonthlyCharges))+geom_histogram(fill='white',col='violet',bins = 80)
     
# 4. Create a histogram using customer churn data:
# a. Assign ‘tenure’ column to the x-axis.
# b. Set the number of bins to 50.
# c. Assign a color ‘white’ to the bars.
# d. Assign a color ‘black’ to the ‘fill’ attribute in geom_histogram function.
     ggplot(data = customer_churn,aes(tenure))+geom_histogram(fill='black',col='white',bins = 50)
     
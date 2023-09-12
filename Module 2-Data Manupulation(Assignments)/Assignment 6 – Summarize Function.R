
#Module 2: Assignment 6 – Summarize Function

#Problem Statement:
#  Jonas is assigned a task to use summarize() function for understanding the data through
#various statistical parameter. The tasks he has to perform on the placement data are given below.

#Tasks to be performed:


#1. Using summarize() function calculate the following for etest column:
  #a. Median
      summarise(placement,median=median(etest_p))

  #b. Variance
      summarise(placement,variance=var(etest_p))


  #c. Standard Deviation
      summarise(placement,STD=sd(etest_p))


#2. Calculate the following for MBA percentage(mba_p) of students:
  #a. Median
      summarise(placement,median=median(mba_p))
      
  #b. Variance
      summarise(placement,variance=var(mba_p))
      
  #c. Standard Deviation
      summarise(placement,STD=sd(mba_p))

#3. Calculate the median of hsc_p and group it w.r.t. ‘Salary’ column.
      summarise(group_by(placement,salary),meadian_hsc_p=median(hsc_p))


#4. Calculate variance ssc_p and group it w.r.t. ‘Salary’ column.
      summarise(group_by(placement,salary),variance_ssc_p=var(ssc_p))

#5. Calculate standard deviation of etest_p and group it w.r.t. ‘Salary’.
      summarise(group_by(placement,salary),STD_etest=sd(etest_p))
      


#Module 1: Assignment 17 – Tail Function


#Problem Statement:
#  Sam is working on placement dataset. He has looked over first few values of the data and performed certain arithmetic operations. Now, Sam has to analyze and perform certain operations as a part of data analysis on the last few values of the dataset. Tasks to be performed:
  
#1. Extract the last few values of the following columns from the placement dataset:

#a. Ssc_p
tail(placement$ssc_p)
#b. Hsc_p
tail(placement$hsc_p)

#c. Degree_p
tail(placement$degree_p)

#d. Etest_p
tail(placement$etest_p)

#e. Mba_p
tail(placement$mba_p)

#f. Salary
tail(placement$salary)

#2. Check an add 12000 to the last 8 values of the salary column.
tail(placement$salary,8)+12000

#3. Check and increase the mba_p score by 10 for the last few values.
tail(placement$mba_p,10)+10



#Module 1: Assignment 16 – Head Function


#Problem Statement:
#  Sam is assigned a task to analyze the data by checking the first few values of the placement dataset. There are various columns in the dataset that needs to be checked for its first few values.


#Tasks to be performed:
  
#1. Check the first five values of the following columns using the head function:
#a. Sl_no
head(placement$sl_no)

#b. Gender
head(placement$gender)

#c. Ssc_p
head(placement$ssc_p)

#d. Ssc_b
head(placement$ssc_b)

#e. Hsc_p
head(placement$hsc_p)

#f. Degree_p
head(placement$degree_p)

#g. Degree_t
head(placement$degree_t)

#h. Etest_p
head(placement$etest_p)

#i. Specialization
head(placement$specialisation)

#j. Mba_p
head(placement$mba_p)

#k. Salary
head(placement$salary)

#2. Add 5000 to the first six data of the salary column.
head(placement$salary)+5000

#3. Add 7.5 to the first 10 values of e_test column.
head(placement$etest_p,10)+7.5


#4. Reduce the mba_p score by 5 for the first three values.
head(placement$mba_p,3)-5

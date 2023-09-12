

#Module 2: Assignment 4 – Select Function

#Problem Statement:
#  Jonas is working on data manipulation using placement and pharmacovigilance dataset.
#  Now, he has to perform data manipulation operation using select() function from the dplyr package.

#Tasks to be performed:


#1. Extract the following columns using placement dataset:
  #a. Extract the specialization column (12th column) and store it in s_student.
      select(placement,specialisation)->s_student
      View(s_student)

  #b. Extract the salary column (15th column) and store it in s_salary.
      select(placement,15)->s_salary
      View(s_salary)
  #c. Extract the higher secondary percentage column (5th column) and store it in hsc_percent.
      select(placement,hsc_p)->hsc_percent
      View(hsc_percent)

#2. Extract the following columns from the pharmacovigilance dataset:
  #a. Extract 1st, 3rd, and 5th column and store it in col_135.
      select(pharma,1,3,5)->col_135
      View(col_135)
  
  #b. Extract the 2nd and 6th column and store it in col_26
      select(pharma,2,6)->col_26
      View(col_26)


#3. Extract column number 1 to 5 from placement dataset.
      select(placement,1:5)->col1_5
      View(col1_5)
      
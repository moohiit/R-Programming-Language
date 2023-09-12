
#Module 1: Assignment 2 - Array

#Tasks to be performed:

#1. Create an array as per the given data:

#a. An array named array_total_charges that contains the first 10 values from the total charges column
array_total_charges=array(c(29.85,
                          1889.5,
                          108.15,
                          1840.75,
                          151.65,
                          820.5,
                          1949.4,
                          301.9,
                          3046.05,
                          3487.95),dim = c(3,3,2))
print(array_total_charges)

#b. An array names array_monthly_charges that contains first five values from the monthly charges column.
array_monthly_charges = array(c(29.85
                                ,1889.5
                                ,108.15
                                ,1840.75
                                ,151.65),dim = c(3,3,1))
print(array_monthly_charges)

#2. Create an array using placement data-set that comprises of:
 #Importing Placement Data-set:
     placement=read.csv("E:\\Data Science Architect Master's Course\\Intellipaat Live\\Unit 1-Data Science Course\\Assignments\\Placement_Data_Full_Class.csv")

 #a. Data of first 15 values from salary column.
     array1=array(placement$salary[1:15])
     print(array1)

 #b. Data of first five values from mba_p column.
     array2=array(placement$mba_p[1:5])
     print(array2)

    #c. Data of first 10 values from e_test_p column.
     array3=array(placement$etest_p[1:10])
     print(array3)


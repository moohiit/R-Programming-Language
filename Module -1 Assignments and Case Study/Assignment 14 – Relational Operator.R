

#Module 1: Assignment 14 – Relational Operator
#Problem Statement:
#   Sam is working on placement data of a college. Sam is assigned a task to extract and
#   analyze the data based on certain condition.


#Tasks to be performed:

#1. Extract the data of the students who are:

  #a. Having SSC score greater than or equal to 65.
    ans_a=placement[placement$ssc_p>=65,]
    View(ans_a)

  #b. Having HSC score greater than 80.
    ans_b=placement[placement$hsc_p>80,]
    View(ans_b)

  #c. Earning more than 200000.
    ans_c=placement[placement$salary>200000,]
    View(ans_c)



#2. Extract the data of the students who are:

  #a. Placed and earning salary less than 250000.
    ans_2a=placement[placement$salary<250000 & placement$status=='Placed',]
    View(ans_2a)


  #b. From commerce and management having earning salary less than 600000.
    ans_2b=placement[placement$degree_t=='Comm&Mgmt' &placement$salary<600000,]
    View(ans_2b)

  #c. From Science stream with etest score greater than 90.
    ans_2c=placement[placement$etest_p>90 & placement$hsc_s=='Science',]
    View(ans_2c)

#3. Extract the data of the students who are:

  #a. From Central board studying Arts.
    ans_3a=placement[placement$hsc_s=='Arts' & placement$hsc_b=='Central',]
    View(ans_3a)

  #b. From Sci&Tech with e_test score equals to 75.
    ans_3b=placement[placement$etest_p==75 & placement$degree_t=='Sci&Tech',]
    View(ans_3b)



  #c. Placed with a salary of 450000.
    ans_3c=placement[placement$salary==450000,]
    View(ans_3c)
    


#Module 2: Assignment 1 – Filter Function


#Problem Statement:
#  Jonas is working on data manipulation using placement dataset. Now, he has to perform
#  data manipulation operation using filter() function from the dplyr package.

#Tasks to be performed:
library(dplyr)

#1. Extract the data of students who studied Science (hsc_s) from Central board (hsc_b)
#   and secured more than 70 percent (hsc_p) and store it in s_science.
    filter(placement,hsc_s=='Science' & hsc_b=='Central'& hsc_p>70)->s_science
    View(s_science)
     
#2. Extract the data of students who are pursuing a degree in Commerce & Management
#   (degree_t) and specialization is Mkt&Fin and store it in d_commerce.
    filter(placement,degree_t=='Comm&Mgmt'& specialisation=='Mkt&Fin')->d_commerce
    View(d_commerce)
    
#3. Extract the data of students whose score in MBA (mba_p) is greater than 75 with etest score greater than 70.
    filter(placement,mba_p>75 & etest_p>70)->mba_test
    View(mba_test)
    
#4. Extract the data of students with specialization as Mkt&Fin with etest score greater than 90.
    filter(placement,specialisation=='Mkt&Fin' & etest_p>90)->mktfin_90
    View(mktfin_90)    
    
#5. Extract the data of students who are either from Commerce or Science stream.
    filter(placement,hsc_s=='Science'|hsc_s=='Commerce')->sci_com
    View(sci_com)
    
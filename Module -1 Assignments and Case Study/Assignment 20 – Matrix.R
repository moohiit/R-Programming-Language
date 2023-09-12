

#Module 1: Assignment 20 – Matrix


#Problem Statement:
#  Sam is given the below task for understanding Matrix.

#Tasks to be performed:
  
#1. Create a matrix named ‘m_even’ with the 16 continuous even values. The matrix
#    should have 4 rows & 4 columns. Also, arrange the elements by row.
evens=seq(0,30,by=2)
View(evens)
m_even=matrix(data = evens,nrow = 4,ncol = 4,byrow = T)
View(m_even)

#2. Create a matrix name ‘m_odd’ having 4 rows and 4 columns with 16 consecutive odd values arranged by row.
odds = seq(1,31,by=2)
odds
m_odds=matrix(data = odds,nrow = 4,ncol = 4, byrow = T)
View(m_odds)

#3. Create a matrix named m_8 as per the following conditions:
#a. The dimension of the matrix should be 8x8.
#b. It should have consecutive values starting from 1.
#c. It should be arranged by row.

data=c(1:64)
matrix(data = data,nrow = 8,ncol = 8,byrow = T)->m_8
View(m_8)

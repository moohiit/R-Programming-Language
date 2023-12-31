

#Module 1: Case Study 5 – Data Structures in R

#Problem Statement:
#  Sam’s next exam is on ‘Data Structures’. The questions will be based on what you’ve learnt in the respective module.

#Tasks to be performed:
  #1. Create these vectors:
     #a. A character vector named ‘fruits’ with these values: ‘Apple’, ‘Guava’, ‘Banana’, ‘Mango’
         fruits=c('Apple','Guava','Banana','Mango')
         class(fruits)
         print(fruits)
     #b. A numeric vector named ‘hundred’ comprising of the first 100 natural numbers
         hundred=c(1:100)
         class(hundred)
         print(hundred)
     #c. A logical vector named ‘logic_game’ with these values: ‘TRUE’,’TRUE’,’FALSE’,’FALSE’
         logic_game=c(TRUE,TRUE,FALSE,FALSE)
         class(logic_game)
         print(logic_game)
  #2. Create a list named ‘jumbo’ which comprises of:
     #a. A character vector comprising of alphabets from A to D
     #b. A numeric vector comprising of numbers from 55 to 60
     #c. A logical vector comprising of just these two values: True, False
         jumbo=list(c('A','B','C','D'),c(55:60),c(TRUE,FALSE))
         print(jumbo)
         
       #i. Now, access the third value from the first element of the list
         jumbo[[1]][3]
       #ii. Access the 2nd value from the 2nd element of the list
         jumbo[[2]][2]
       #iii. Access the 1st value from the 3rd element of the list
         jumbo[[3]][1]
         
         
  #3. Create a matrix named ‘four_trouble’, with the numbers 1 to 16. The matrix should have 4 rows & 4 columns
     #a. Arrange the elements by row
         four_trouble=matrix(data =c(1:16),nrow = 4,ncol = 4,byrow = T )
         print(four_trouble)
         
  #4. Create an array named ‘sky_maze’ with the numbers 1 to 32. The array should comprise of two 4*4 matrices
         sky_maze=array(data = c(1:32),dim = c(4,4,2))
         print(sky_maze)
         
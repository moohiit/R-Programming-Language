
#Module 1: Assignment 3 – C Function

  #Tasks to be performed:
 
# 1. Extract the following columns from the dataset:
 # Importing Dataset:
 pharma=read.csv("Give your file path")
  #a. Age and Issues.
   subset1=pharma[,c('Age','Issues')]
   View(subset1)
   
  #b. Patient ID and Drug ID.
   subset2=pharma[,c('PatientID','DrugID')]
   View(subset2)
   
  #c. Gender, Age, and Issues.
   subset3=pharma[,c("Gender","Age","Issues")]
   View(subset3)
   
#2. Extract the following rows:
  #a. Row numbers 1,2,3,4, and 5
   row_data1=pharma[c(1:5),]
   View(row_data1)
   
  #b. Rows from 15 to 75
   row_data2=pharma[c(15:75),]
   View(row_data2)
   
  #c. Rows from 100-150
   row_data3=pharma[c(100:150),]
   View(row_data3)

#3. Extract the following rows and columns:
  
  #a. Columns (1,2,4) and rows(1 to 10)
   dataset1=pharma[c(1:10),c(1,2,4)]
   View(dataset1)
   
  #b. Columns (2,4,5) and rows(50 to 120)
   dataset2=pharma[c(50:120),c(2,4,5)]
   View(dataset2)
   
#c. Columns (1,3,6) and rows(100 to 200)
   dataset3=pharma[c(100:200),c(1,3,6)]
   View(dataset3)
   
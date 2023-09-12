

#Module 1: Assignment 18 – Sample Function

#Problem Statement:
#  Sam is given a task for extracting random set of values from the pharmacovigilance dataset for different columns.

#Tasks to be performed:
  
#1. Extract some random set of values using sample function.
pharma[sample(nrow(pharma),200),]->sample1
View(pharma[sample(nrow(pharma),5),])
View(sample1)

#a. Select five random values from LocationID.
sample2=sample(pharma$LocationID,5)
View(sample2)


#b. Extract 25 random values from age column.
sample3=sample(pharma$Age,25)
View(sample3)

#c. Extract 15 random from PatientID.
sample4=sample(pharma$PatientID,15)
View(sample4)

#d. Extract 10 random values from Issues column.
sample5=sample(pharma$Issues,10)
View(sample5)

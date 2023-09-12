

#Module 1: Assignment 11 – Subset Function


#Problem Statement:
  '
  Ram is a Data Scientist in a company. The company wants to build a system for a
  pharmaceutical company using Pharmacovigilance data. For accomplishing this task,
  they need to understand the data. So, Ram is assigned a task to analyze the data in small sets.
  '


#Tasks to be performed:

#1. Extract a subset of Pharmacovigilance data of all the female patients whose age 
#   is less than 25 with issues of unclear dose.

    subset(pharma,pharma$Gender=='F' & pharma$Age<25 & pharma$Issues=='unclear dose')->Female_Data
    View(Female_Data)
    
    
#2. Extract the records of all the male patients whose age is less than 25 and medication data is not available.

    subset(pharma,pharma$Gender=='M' & pharma$Age<25 & pharma$Issues=='Medication history documenting error')->Male_data
    View(Male_data)
    
#3. Fetch the records of children whose age equals to 8 whose documentation of medication history is not available.

    subset(pharma,pharma$Age==8 & pharma$Issues=='Medication history documenting error')->chidren_data
    View(chidren_data)
    
#4. Extract all the records of female children of age>5 having an unclear dose.

    subset(pharma,pharma$Age>5 & pharma$Issues=='unclear dose' & pharma$Gender=='F')->female_child
    View(female_child)
    
    

#5. Extract the records of male patients of age equals to 35 with an unclear route of transmission.
    subset(pharma,pharma$Gender=='M' & pharma$Age==35 & pharma$Issues=='unclear dose')->Male_35
    View(Male_35)    
    
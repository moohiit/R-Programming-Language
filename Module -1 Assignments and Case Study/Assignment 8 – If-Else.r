

#Module 1: Assignment 8 – If-Else


#Tasks to be performed:
#1. Using the placement dataset, perform the following tasks:

#a. Check the value of 12th row of degree_t column, if the value is “Comm&Mgmt”, 
  #and then print “The student is of the stream Commerce and Management”.
  
   if(placement$degree_t[12]=='Comm&Mgmt'){
     print("The student is of the stream Commerce and Management.")
   }


#b. Check the value of 23rd row of specialization column, if the value is
  #“Mkt&HR”, then print “The specialization of student is Marketing and Human Resource”

   if(placement$specialisation[23]=='Mkt&HR'){
     print("The specialization of student is Marketing and Human Resource")
   }

   

#c. Check the 39th row of status column, if the value is “Placed”, then print “The student is placed from campus.”

   if(placement$status[39]=='Placed'){
     print("The student is placed from campus")
   }

#2. Using the pharmacovigilance dataset, perform the following tasks:
   # Importing Pharmacovigilance dataset:
   pharma=read.csv("E:\\Data Science Architect Master's Course\\Intellipaat Live\\Unit 1-Data Science Course\\Assignments\\Pharmacovigilance_audit_Data.csv")

#a. Check the value of 37th row of Issues column, if the value is
  #“Medication history documenting error”, then print “The patient’s medical record is missing”.

   if(pharma$Issues[37]=="Medication history documenting error"){
     print("The patient’s medical record is missing.")
   }else{
     print("unclear route")
   }


#b. Check the value of 180th row of Issues column, if the value is “Unclear Route”, then print 
#   “The patient is having an unclear route of transmission”

   if(pharma$Issues[180]=='unclear route'){
     print("The patient is having an unclear route of transmission")
   }

#c. Check the 220th row of Location ID column, if the value is “Location3”, then print 
#   “The location ID of the patient is Location3.”

   if (pharma$LocationID[220]=='Location3'){
     print("The location ID of the patient is 'Location3'.")
   }

#3. Using the city temperature dataset, perform the following tasks:
   # Importing Temperature dataset:
   temperature=read.csv("E:\\Data Science Architect Master's Course\\Intellipaat Live\\Unit 1-Data Science Course\\Assignments\\city_temperature.csv")

#a. Check the value of 11th row of Region column, if the value is “Africa”, then print
#  “The region for which we are calculating average temperature is Africa”.
  
    if(temperature$Region[11]=='Africa'){
     print("The region for which we are calculating average is Africa")
   }


#b. Check the value of row number 79961 of city column, if the value is
#   “Conakry”, then print “The city for which we are calculating average temperature is Conakry”.

   if (temperature$City[79961]=='Conakry'){
     print("The city for which we are calculating average temperature is Conakry")
   }


#c. Check the value of 70th row of year column, if the value is “1995”, then
#   prints “We are calculating average temperature for the year 1995”.
   
   if(temperature$Year[70]=='1995'){
     cat("We are calculating average temperature for the year 1995")
   }
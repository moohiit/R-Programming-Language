

#Module 1: Assignment 6 – For Loop

#Tasks to be performed:
  #1. Using for loop, calculate the number of students from the placement dataset according to the following conditions:
  # Importing Dataset:
   placement=read.csv("E:\\Data Scince Architect Master's Course\\Intellipaat Live\\Unit 1-Data Science Course\\Assignments\\Placement_Data_Full_Class.csv")
 e
   
    #a) Students who are placed.
   count=0
   for(i in 1:nrow(placement)){
     if(placement$status[i]=='Placed'){
       count=count+1
     }
   }
   cat("Student who are placed:",count)

   
    #b) Students who are from Science stream.
   count=0
   for(i in 1:nrow(placement)){
     if(placement$hsc_s[i]=='Science'){
       count=count+1
     }
   }
   cat("Students who are from Science stream:",count)
  
  
   #c) Students who are from Commerce stream.
   count=0
   for(i in 1:nrow(placement)){
     if(placement$hsc_s[i]=='Commerce'){
       count=count+1
     }
   }
   cat("Students who are from Commerce stream:",count)


   
#2. Using for loop, calculate the number of students from the placement dataset who score more than 80.0 in higher secondary exams (hsc_p).

   count=0
   for(i in 1:nrow(placement)){
     if(placement$hsc_p[i]>80.0){
       count=count+1
     }
   }
   cat("Students who score more than 80.0 in higher secondary exams:",count)
   
   
   
#3. Calculate the number of students who scored more than 75% in MBA (mba_p) and got placed from campus placement drives.

   count=0
   for(i in 1:nrow(placement)){
     if(placement$mba_p[i]>75.0 && placement$status[i]=='Placed'){
       count=count+1
     }
   }
   cat("No. Of student who scored more than 75% and got placed from Campus:",count)
   
   
   
#4. Calculate the number of senior citizens from customer churn dataset who are using internet service as ‘DSL’.
   # Importing Customer_churn Dataset:
   customer_churn=read.csv("E:\\Data Science Architect Master's Course\\Intellipaat Live\\Unit 1-Data Science Course\\Assignments\\customer_churn.csv")
   
   count=0
   for(i in 1:nrow(customer_churn)){
     if(customer_churn$SeniorCitizen[i]==1 && customer_churn$InternetService[i]=='DSL'){
       count=count+1
       
     }
   }
   cat("No. of Seniorcitizen using internet service as 'DSL':",count)
   


#Module 1: Assignment 5 – Class Function

#Tasks to be performed:
  
#1. Find the class of the following attributes:
  # Importing Dataset:
  temperature=read.csv("E:\\Data Science Architect Master's Course\\Intellipaat Live\\Unit 1-Data Science Course\\Assignments\\city_temperature.csv")
  View(temperature)
  #a. Region
  class(temperature$Region)

  #b. Country
  class(temperature$Country)

  #c. City
  class(temperature$City)
  
  #d. Month
  class(temperature$Month)

  #e. Day
  class(temperature$Day)

  #f. Year
  class(temperature$Year)

  #g. AvgTemperature
  class(temperature$AvgTemperature)

#2. After finding the class of the above attributes, convert them to the following data type:
  #(i) Vector to Character
  #Importing Dataset:
  placement=read.csv("E:\\Data Science Architect Master's Course\\Intellipaat Live\\Unit 1-Data Science Course\\Assignments\\Placement_Data_Full_Class.csv",stringsAsFactors = T)

  #a. Gender
  #format to change adatatype: 'dataframeName$colName <- as.factor(datataframeName$colName)'
  class(placement$gender)
  placement$gender<-as.character(placement$gender)
  class(placement$gender)

  #b. ssc_b
  class(placement$ssc_b)
  placement$ssc_b<-as.character(placement$ssc_b)
  class(placement$ssc_b)
  

  #c. hsc_b
  class(placement$hsc_b)
  placement$hsc_b<-as.character(placement$hsc_b)
  class(placement$hsc_b)

  #d. hsc_s
  class(placement$hsc_s)
  placement$hsc_s<-as.character(placement$hsc_s)
  class(placement$hsc_s)

  #e. status
  class(placement$status)
  placement$status<-as.character(placement$status)
  class(placement$status)

  #f. workex
  class(placement$workex)
  placement$workex<-as.character(placement$workex)
  class(placement$workex)

  #g. specialization
  class(placement$specialisation)
  placement$specialisation<-as.character(placement$specialisation)
  class(placement$specialisation)

  
#ii) Check the class of placement_data and convert it to character data type.
  class(placement)
  placement<-as.character(placement)
  class(placement)

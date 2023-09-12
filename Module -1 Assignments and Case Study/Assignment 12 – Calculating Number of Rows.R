

#Module 1: Assignment 12 – Calculating Number of Rows & Columns

#Problem Statement:
  '
  Sam has to extract the records of the students from placement data according to varying
  conditions. Below are the tasks that need to be performed:
  '

#Tasks to be performed:

#1. Check how many rows and columns are there in the dataset?
     dim(placement)
     nrow(placement)
     ncol(placement)


#2. Extract the data of people who are having the branch as Sci&Tech who are
#    employed. Then, check how many such people are there who are employed by
#     finding the number of rows that contains the data of employed people.

     data=subset(placement,placement$degree_t=='Sci&Tech' & placement$status=='Placed')
     View(data)
     nrow(data)

#3. Find the number of rows of female students who are from Arts and Commerce stream.

     subset(placement,placement$gender=='F' & c(placement$hsc_s=='Commerce' | placement$hsc_s=='Arts'))->data_1
     View(data_1)
     nrow(data_1)

     #other way to solve this:
     
     data_frame_mod <- placement[placement$hsc_s %in% c("Commerce","Arts")
                                  & placement$gender == 'F',]
     View(data_frame_mod)
  
     
#4. Fetch the number records of all the students as per the following condition:
  
#a. Students who are placed
     
     nrow(subset(placement,placement$status=='Placed'))


#b. Students who are earning more than 300000

     nrow(subset(placement,placement$salary>300000))


#c. Also find the number of such student

     nrow(subset(placement,placement$status=='Placed' & placement$salary>300000))

#5. Find the number of columns having data type as following:
  #a. Integer
  #b. Factor
  #c. Numeric
     integer=0
     numeric=0
     factor=0
     for (i in 1:ncol(placement)){
       if(class(placement[,i])=='integer'){
         integer=integer+1
       }else if(class(placement[,i])=='character'){
         factor=factor+1
       }else if(class(placement[,i])=='numeric'){
         numeric=numeric+1
       }
       i=i+1
       
     }
     cat("Total no. of columns:",integer+numeric+factor)
     
     cat('No. of columns having data type as Integer:',integer)
     
     cat("No. of columns having data type as Numeric:",numeric)
     
     cat("No. of columns having data type as Factor:",factor)
     
     ncol(placement)
     
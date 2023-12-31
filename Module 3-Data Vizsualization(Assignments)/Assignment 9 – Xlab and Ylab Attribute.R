

# Module 3: Assignment 9 – Xlab and Ylab Attribute

# Problem Statement:
#   Sam is working on student’s placement dataset and he realizes that the 
#   visualization of the data should be informative. Thus, he wants to label 
#   x-axis and y-axis. For this task, he uses xlab and ylab attributes.

# Tasks to be performed:

# 1. Create a plot using ggplot() function for hsc_s column, 
#    assign a color ‘orange’, and label x-axis as ‘Higher Secondary Subjects’.
     ggplot(data =placement,aes(hsc_s) )+
       geom_bar(fill='orange')+xlab('Higher Secondary subject')  
     
# 2. Create a plot using ggplot() function for ‘degree_t’ column:
# a. Assign a color ‘palegreen4’
# b. Label x-axis as ‘Percentage in Graduation’
# c. Label y-axis as ‘Number of Students’
     ggplot(data = placement,aes(degree_t))+
       geom_bar(fill='palegreen4')+
       xlab("Percentage in Graduation")+
       ylab("Number of students")
     

# 3. Create a plot using ggplot() function for ‘specialisation’ column:
#   .Assign a color ‘wheat3’
# a. Label x-axis as ‘Specialization Field’
# b. Label y-axis as ‘Number of Students’
# c. Give a heading using ‘main’ attribute as ‘Distribution of Specialization’
     ggplot(data = placement,aes(specialisation))+
       geom_bar(fill='wheat3')+
       xlab("Specialization Field")+
       ylab("Number of Students")
     
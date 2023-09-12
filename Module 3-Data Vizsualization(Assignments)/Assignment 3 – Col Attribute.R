

# Module 3: Assignment 3 – Col Attribute

# Problem Statement:
#   John is assigned a task by his manager to visualize the data using graphs and plots. He has to visualize the data by categorizing the data according to various columns using ‘col’ attribute. So, John lists down the tasks that need to be performed using placement dataset.

# Tasks to be performed:

# 1. Create the following geom_point() where:
# a. ‘Gender’ is assigned to x-axis, ‘ssc_p’ to y-axis, and map ‘ssc_b’ with col aesthetic.
     ggplot(data = placement,aes(x=gender,y=ssc_p,col=ssc_b))+geom_point()

# b. ‘ssc_b’ is assigned to x-axis, ‘hsc_s’ to y-axis, and map ‘degree_t’ with col aesthetic.
     ggplot(data = placement,aes(x=ssc_b,y=hsc_s,col=degree_t))+geom_point()
     
# c. ‘Status’ is assigned to x-axis, salary to y-axis, and map ‘specialisation’ with col aesthetic.
     ggplot(data = placement,aes(x=status,y=salary,col=specialisation))+geom_point()
     
# d. ‘Degree_t’ is assigned to x-axis, ‘etest_p’ to y-axis, and map ‘workex’ with col aesthetic.
     ggplot(data = placement,aes(x=degree_t,y=etest_p,col=workex))+geom_point()
     
# e. ‘Hsc_s’ is assigned to x-axis, ‘hsc_b’ to y-axis, and map gender with col aesthetic.
     ggplot(data = placement,aes(x=hsc_s,y=hsc_b,col=gender))+geom_point()
     
# f. ‘Hsc_s’ is assigned to x-axis, ‘etest_p’ to y-axis, and map ‘degree_t’ with col aesthetic.
     ggplot(data = placement,aes(x=hsc_s,y=etest_p,col=degree_t))+geom_point()
     
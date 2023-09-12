

# Module 3: Assignment 7 – Geom_point() Attribute

# Problem Statement:
#   Sam is assigned a task to create plots for visualization such that it gives a clear idea the
#   distribution of data points from the student placement dataset.

# Tasks to be performed:

# 1. Create a scatter-plot:
# a. Assign ‘hsc_p’ column to x-axis and ‘ssc_p’ column to y-axis.
# b. Map ‘gender’ to the col aesthetic.
# c. Map ‘workex’ to the col aesthetic.
# d. Map ‘status’ to the col aesthetic.
# e. Add a title to the plot as ‘Comparing HSC & SSC Percentage’.
     ggplot(data = placement,aes(x=hsc_p,y=ssc_p,col=gender))+geom_point()+ggtitle("Comparing HSC & SSC Percentage")
     ggplot(data = placement,aes(x=hsc_p,y=ssc_p,col=workex))+geom_point()+ggtitle("Comparing HSC & SSC Percentage")
     ggplot(data = placement,aes(x=hsc_p,y=ssc_p,col=status))+geom_point()+ggtitle("Comparing HSC & SSC Percentage")

     
# 2. Create a scatter-plot:
# a. Assign ‘degree_p’ column to the x-axis and ‘mba_p’ to the y-axis.
# b. Use ‘col’ as an aesthetic and assign it the column ‘status’.
# c. Use ‘col’ as an aesthetic and assign it the column ‘specialisation’.
# d. Add a title to the plot as ‘Understanding Degree & MBA Percentage’.
     ggplot(data = placement,aes(x=degree_p,y=mba_p,col=status))+geom_point()+
       ggtitle("Understanding Degree & MBA Percentage")
     
     ggplot(data = placement,aes(x=degree_p,y=mba_p,col=specialisation))+geom_point()+
       ggtitle("Understanding Degree & MBA Percentage")


# 3. Create a scatter-plot:
# a. Assign ‘etest_p’ column to the x-axis and ‘salary’ to the y-axis.
# b. Use ‘col’ as an aesthetic and assign it the column ‘workex’.
# c. Use ‘col’ as an aesthetic and assign it the column ‘gender’.
# d. Add a title to the plot as ‘E-test & Salary’.
     ggplot(data = placement,aes(salary,etest_p,col=workex))+geom_point()+
       ggtitle("E-test & Salary")
     
     ggplot(data = placement,aes(salary,etest_p,col=gender))+geom_point()+
       ggtitle("E-test & Salary")
     
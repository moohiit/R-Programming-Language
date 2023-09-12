

# Module 3: Assignment 12 – Labs()

# Problem Statement:
#   Sam has created various plots for visualization. Now, he is assigned a task to add headings
#   to the plots that he has created using labs function for student placement dataset.

# Tasks to be performed:
# 1. Create bar-plot as per the following condition:
# a. Assign ‘degree_t’ to the x-axis.
# b. Give title of the plot as ‘Degree Plot’.
# c. Assign a color ‘yellowgreen’.
     ggplot(data = placement,aes(degree_t))+
       geom_bar(fill='yellowgreen')+
       labs(title = "Degree Plot")+
       theme(plot.title = element_text(hjust = .5))


# 2. Create bar-plot as per the following condition:
# a. Assign ‘ssc_b’ to the x-axis.
# b. Give title of the plot as ‘SSC Plot’.
# c. Assign a color ‘beige’.
     ggplot(data = placement,aes(ssc_b))+
       geom_bar(fill='beige')+
       labs(title = "SSC Plot")+
       theme(plot.title = element_text(hjust = .5))

# 3. Create bar-plot as per the following condition:
# a. Assign ‘hsc_b’ to the x-axis.
# b. Give title of the plot as ‘HSC Plot’.
# c. Assign a color ‘cornsilk4’.
     ggplot(data = placement,aes(hsc_b))+
       geom_bar(fill='cornsilk4')+
       labs(title = "HSC Plot")+
       theme(plot.title = element_text(hjust = .5))

# 4. Create bar-plot as per the following condition:
# a. Assign ‘specialisation’ to the x-axis.
# b. Give title of the plot as ‘Specialization Plot’.
# c. Assign a color ‘pink’.
     ggplot(data = placement,aes(specialisation))+
       geom_bar(fill='pink')+
       labs(title = "Specialisation Plot")+
       theme(plot.title = element_text(hjust = .5))
     
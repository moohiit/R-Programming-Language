

# Module 3: Assignment 8 – Theme()

# Problem Statement:

#   Sam is assigned a task to build visualization plots using different themes for the
#   placement dataset.

# Tasks to be performed:

# 1. Build a bar-plot for the ‘specialisation’ column. Give it a fill color of ‘skyblue’
# a. Give the panel a background color of ‘cornsilk4’.
# b. Give the plot a background color of ‘lightgreen’.
     ggplot(data = placement,aes(specialisation))+geom_bar(fill='skyblue')+theme(
       plot.background = element_rect(fill = 'lightgreen')
     )+theme(panel.background = element_rect(fill ='cornsilk4' ))

     
     
# 2. Build a scatter-plot between ‘hsc_p’ & ‘ssc_p’. Map ‘hsc_p’ on the y-axis & ‘ssc_p’ on
#    the x-axis. Assign a color of ‘lightgreen’ to the points.
# a. Add a title to the plot ‘HSC Percent vs SSC Percent.
# b. Give the panel a background color of ‘skyblue’.
# c. Give the plot a background color of ‘beige’.
# d. Center align the title.
     ggplot(data = placement,aes(hsc_p,ssc_p))+geom_point(fill='lightgreen')+
       labs(title = "HSC Percent vs SSC Percent")+theme(panel.background = element_rect(fill='skyblue'))+
       theme(plot.background = element_rect(fill = 'beige'))+
       theme(plot.title = element_text(hjust = .5,face = 'bold',color='gold'))
     
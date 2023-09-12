

# Module 3: Assignment 6 – Geom_bar() Attribute

# Problem Statement:
#   Create visualizations using bar-plot for pharmacovigilance data.

# Tasks to be performed:
# 1. Build a bar-plot:
# a. Assign ‘LocationID’column to x-axis.
# b. Assign ‘Issues’ to the fill attribute.
# c. Set title to ‘Location ID Plot’
     ggplot(data = pharma,aes(LocationID,fill=Issues))+geom_bar()+ggtitle("Location ID plot")


# 2. Build a bar-plot for the ‘DrugID’ column:
# a. Assign the fill color to be ‘orange’
# b. Assign the boundary color to be ‘peru’
# c. Set title to ‘Drug ID Plot’
     ggplot(data = pharma,aes(DrugID))+geom_bar(fill='orange',col='peru')

# 3. Build a bar-plot for the ’Gender’ column assigned to x-axis and then:
# a. Assign ‘DrugID’ to the fill aesthetic
# b. Assign ‘Issues’ to the fill aesthetic
# c. Change the position of bars to ‘identity’
# d. Set title to ‘Gender Plot’
     ggplot(data = pharma,aes(Gender,fill=DrugID))+geom_bar(
       position = 'identity')+ggtitle('Gender Plot')+
       theme(plot.title = element_text(hjust = .5,face = 'bold',colour = 'red'))
     
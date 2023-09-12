

# Module 3: Assignment 13 – plot()

# Problem Statement:
#   John is assigned a task to understand the distribution of various columns in the placement
#   dataset. He lists down the tasks to be accomplished by using plot() function.

# Tasks to be performed:
# 1. Create a plot to understand the distribution of degree_t column.
     plot(placement$degree_t,col='green')
     
# 2. Create a plot to understand the distribution of hsc_s column.
     plot(placement$hsc_s,col='pink')

# 3. Create a plot for specialization column and give a heading as ‘Specialization of
#    Candidate’.
     plot(placement$specialisation,col='tomato2')

# 4. Create a plot using ssc_b, give it a color of ‘aquamarine4’, and give a heading as
#    ‘Type of Board’.
     plot(placement$ssc_b,col='yellowgreen')
     
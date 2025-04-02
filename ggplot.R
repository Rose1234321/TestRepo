library(datasets) #load dataset library
data(mtcars) #load mtcars lib
head(mtcars,5)  #view first 5 rows
# ?mtcars in console to find information on dataset

#load ggplotlib
library(ggplot2)

#scatterplot of displacement and miles per gallon
#title plot
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")

#boxplot
#make vs a factor as Y/N 1/0 is categorical variable
mtcars$vs <- as.factor(mtcars$vs)

#create boxplot
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot(alpha=0.3) + theme(legend.position = "none")

#histogram of weight
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)

#Beginner

#Problem Set 1

#1.What class of object is mtcars? What function did you use to find out? data.frame, class()

#2.Is precip defined as a 1-dimensional array or a vector? How did you find out? vector, dim() did not work

#3.How would you convert the data.frame trees into a matrix? matrix(trees)

#4.What is the name of the 14th city in the precip dataset? Atlanta

#5.What function would you use if you wanted to combine all three data sets into a single object?

#6.Does precip consist of numeric data? How did you find out? Yes, class(precip)

#7.Code four different ways to subscript the 2nd row and 7th column of mtcars using bracket notation - i.e., 17.02. mtcars[2,7]

#8.How would you change the precipitation values of "Juneau", "Phoenix", and "Sacramento" to 23, 46, and 12 in the precip dataset. (Hint: You will need to use subscripts and the <- operator).

#9.Are there any trees in the trees dataset with more girth than volume? How did you find out? No, I looked at the list.

#10.Take the sum of all elements in column height of the trees dataset, call this value A. Take the sum of all elements in row Valiant of the mtcars dataset, call this value B. Take the sum of the first 8 elements of the precip dataset, call this value C. Divide C by B and add A. What is your final answer? 2358.352

#Intermediate

#Section 1 Questions

#1.What does the REPLACE= argument of the sample( ) function do?

#2.Using as(MyMatrix,"numeric") will not convert MyMatrix to numeric data! Can you think of a property of logicals that you can use to convert the logicals to 0's and 1's other than the as( ) function? MyMatrix*1

#3.If you wanted to check if all of the elements in each row are true, how would you do this?

#Section 2 Questions

#1.How many times does the number 7 occur in MyMatrix? 16

#2.How do you find the sum of each column? I couldn't.

#3.How do you find the product of each column? I couldn't.

#4.How would you change every instance of the number 10 to 12? MyMatrix[which(MyMatrix==10)]<-12

#5.How many values in MyMatrix are greater than 3 and less than 8? 33

#6.How do you change the elements of column 12 into character data, while keeping columns 1- 11 as numeric data? I don't know.

#7.Find which rows of MyMatrix have a sum >70. Make a new version of MyMatrix where the 13th column is a set of TRUE and FALSE values denoting which rows have a sum >70. (Hint: What type of object allows you to store both logical and numeric data at once?) 2 5 6 7 8, Don't know where to go from there.

#Advanced

#1.Load the iris dataset we used in the earlier tests. Write a function that takes iris as its argument, and returns three subsets of the data.frame split by the three different types of species (saved as a single object).

#2.Write a function that takes iris as its argument. The function should, for each row, add Sepal.Length and Petal.Length if Sepal.Width is > 3.1. It should substract Petal.Length from Sepal.Length if Sepal.Width is <3.1. The answer should be returned as a vector.

#3.Load the mtcars dataset we used in the earlier tests. Write a function that takes a number of cylinders as its argument. Have the function return the average miles per gallon (column mpg) for all cars with that many cylinder (column cyl).

#4.Write a function that simulates 1,000,000 powerball drawings. A powerball drawing takes a random sample of 5 numbers (without replacement) from 1 through 69, plus one powerball number ranging from 1 through 26. The function should return a single object recording all of your draws.

#5.Write a function that take a single set of lottery numbers (as a vector) as its argument. As before, write a function that simulates 1,000,000 powerball drawings. Have the function return a TRUE or FALSE value if you won any of the drawings.

#Expert

#1.What is the mean, median, and standard deviation of precip? 34.88571, 36.6, 13.70665

#2.Is precip best visualized using a barplot( ) or hist( )? Why? Bar plot shows the cities and the amount of precipitation in each one.

#3.Generate a vector of random numbers drawn from a normal distribution with the same mean, standard deviation, and number of elements as in the precip dataset. Name this vector RandomNormal.

#4.Write a function that tests, based on the means of each distribution, whether it is likely that RandomNormal and precip were drawn from the same underlying distribution.

#5.Create a density( ) plot of precip and RandomNormal. Is the test you performed above (question 4) a good or bad indicator of whether the two distributions are identical? Why or why not?
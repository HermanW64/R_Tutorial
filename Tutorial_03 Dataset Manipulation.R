# R Tutorial 02: Dataset Manipulation

# Or load a package without confirmation
library("pacman")

# Use package manager to load packages:
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr,
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr, psych)

# use IRIS data
head(iris)

# -----------------------Describe and Summary-----------------------
# summary(): get descriptive statistics (especially helpful to quantitative data)
summary(iris$Species)
summary(iris$Sepal.Length)
summary(iris)

# describe(): for quantitative data only
describe(iris$Sepal.Length)
describe(iris)

# -----------------------Select the Cases-----------------------
# select only Versicolor for plotting a histogram [filter]
hist(iris$Petal.Length[iris$Species == "versicolor"],
     main= "Petal Length of Versicolor"
     )

# Restrain Petal length for plotting a histogram [filter]
hist(iris$Petal.Length[iris$Petal.Length < 2],
     main= "Petal Length Smaller than 2"
     )

# Multiple selectors
hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5],
     main= "Petal Length: Short Virginica"
     )

# Save the selected data to a new variable
i.setosa <- iris[iris$Species == "setosa",]
head(i.setosa)
hist(i.setosa$Petal.Length)

# -------------------------------Data Structures in R--------------------------
# vector 1D collection
v1 <- c(1,2,3,4,5,6.6)
v1

# matrix 2D data
## specify the # of rows
m1 <- matrix(c(T, T, F, F, T, F), nrow = 2)
m1

m2 <- matrix(c("a", "b", "c", "d"),
             nrow = 2,
             byrow = FALSE # determine filling vertically or horizontally
             )
m2

# array (data, dimension(row, column, # of tables))
a1 <- array(c(1:24), c(4,3,2))
a1

# data frame: combine vectors of the same length
## each vector is a column
vNum <- c(1,2,3)
vCharacter <- c("a", "b", "c")
vLog <- c(T, F, T)

## cbind() makes all data characters
dfa <- cbind(vNum, vCharacter, vLog)
dfa

## as.data.frame(cbind()) maintains the data types
dfa1 <- as.data.frame(cbind(vNum, vCharacter, vLog))
dfa1

# list
o1 <- c(1,2,3)
o2 <- c("a", "b", "c", "d")
o3 <- c(T, F, T, T, F)
list1 <- list(o1, o2, o3)
list1

# coercion: change of the data type
coerce <- 5
typeof(coerce)

## change double to integer
coerce <- as.integer(coerce)
typeof(coerce)

## change characters to numeric
coerce2 <- c("1", "2", "3", "4")
typeof(coerce2)
coerce2 <- as.numeric(coerce2)
typeof(coerce2)

## coerce matrix to data frame
coerce3 <- matrix(1:9, nrow= 3)
is.matrix(coerce3)
coerce3

coerce3 <- as.data.frame(coerce3)
is.data.frame(coerce3)
coerce3

# -------------------------------Data Types in R--------------------------------
# You can also use "=" to assign a value
n1 <- 15
typeof(n1)

n2 <- 1.53
typeof(n2)

c1 <- "c1"
typeof(c1)

t1 <- TRUE
typeof(t1)

# -------------------------------Factors and Data Accessing---------------------








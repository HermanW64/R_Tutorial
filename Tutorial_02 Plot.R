# R Tutorial 02: plot

# load a package without confirmation
library("pacman")

# Use package manager to load packages:
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr,
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

# load the dataset from the package
library(datasets)

# load IRIS data
head(iris)

# Use $ to specify the variable in the dataset
# ------------------------------------Quick Plot-------------------------------
## plot the count of each species (categorical variable)
plot(iris$Species)

## plot the petal width of each types of flowers
plot(iris$Species, iris$Petal.Width)

## plot the petal width and petal length of flowers
plot(iris$Petal.Length, iris$Petal.Width)

# ------------------------------------Detailed Plot----------------------------
plot(iris$Petal.Length, iris$Petal.Width,
     col="blue", # color
     pch= 19, # point size
     main= "Iris: Petal Length vs. Petal Width", # title
     xlab= "Petal Length", # x label
     ylab= "Petal Width" # y label
     )

# plot a normal distribution
plot(dnorm, -10, 10,
     col= "red",
     lwd= 5, # line width
     main= "Normal Distribution",
     xlab= "Z-score",
     ylab= "Density"
     )

# ------------------------------------Bar Charts----------------------------
# use another dataset
head(mtcars)

# need frequencies for each category (cyl)
cylinders <- table(mtcars$cyl)
head(cylinders) # variables: cyl category, value: frequencies

# plot the frequency table: barplot
# warning: if you use plot(), you will get a line chart
barplot(cylinders,
        col= "orange",
        main= "Frequencies of Cyl",
        xlab= "CYL type",
        ylab= "Frequencies"
        )

# ------------------------------------Histograms ----------------------------
# use IRIS dataset

hist(iris$Sepal.Length,
     col= "pink",
     main= "Sepal Length Distribution",
     xlab= "Sepal Length Values",
     ylab= "Frequency"
     )

# combine multiple histograms into one single graph
par(mfrow = c(3,1)) # 3 rows, 1 columns (Select the whole section to properly show the graph)

hist(iris$Petal.Width [iris$Species == "setosa"], # [] to add a selector/filter
     xlim = c(0, 3), # domain of x-axis
     breaks = 9, # how many bins
     col = "red",
     main = "Petal Width for Setosa",
     xlab = "Frequency"
     )

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0, 3),
     breaks = 9, # how many bins
     col = "blue",
     main = "Petal Width for Versicolor",
     xlab = "Frequency"
)

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0, 3),
     breaks = 9, # how many bins
     col = "purple",
     main = "Petal Width for Virginica",
     xlab = "Frequency"
)

# Use another dataset: lynx
hist(lynx,
     breaks= 14,
     freq= FALSE, # show density instead of frequency
     col= "thistle1",
     main= paste("Histogram of Annual Canadian Lynx", "Trappings, 1831-1934"), 
     # paste(,) concatenates strings together
     xlab= "Number of Lynx Trapped"
     )

# ------------------------------------Scatter Plot ----------------------------
# use mtcars dataset
# visualize the association between wt and mpg
plot(mtcars$wt, mtcars$mpg,
     pch= 19, # symbol, plotting character (0 - 25)
     cex= 1.0, # point size
     col= "green",
     main= "MPG vs. WT",
     xlab= "WT",
     ylab= "MPG"
     )

# ------------------------------------Overlaying Plot -------------------------
# use Lynx dataset: time series
# we combine a histogram and a normal distribution (run the entire section)
hist(lynx,
     breaks= 14,
     freq= FALSE, # show density instead of frequency
     col= "thistle1",
     main= paste("Histogram of Annual Canadian Lynx", "Trappings, 1831-1934"), 
     # paste(,) concatenates strings together
     xlab= "Number of Lynx Trapped"
)

curve(dnorm(x, mean= mean(lynx), sd= sd(lynx)),
     col= "thistle4",
     lwd= 2,
     add= TRUE # superimpose on previous graph
     )









# R Tutorial 1: Initialize environment

# install a package: package manager
## install.packages("pacman")

# load a package with confirmation
## require("pacman")

# Or load a package without confirmation
library("pacman")

# Use package manager to load packages:
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr,
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

# Use pacman::p_unload() to detach loaded packages

# Use "?function_name" to get details of the function
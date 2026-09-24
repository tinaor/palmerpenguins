# HW 5
rm(list = ls())
setwd("~/Documents/GitHub/palmerpenguins")

# Load library
library(palmerpenguins)

# Inspect the dataset
head(penguins)

# Task 1
## Use apply to calculate means
numeric_means <- apply(penguins[sapply(penguins, is.numeric)], 2, mean, na.rm = TRUE)

## Print the result
print(numeric_means)

# Task 2
## Use tapply to count the number of penguins for each species
species_count <- tapply(penguins$species, penguins$species, length)

## Print the result
print(species_count)

# Task 3
## Use lappy to calculate the mean bill length for each species
bill_length_means <- lapply(
  split(penguins$bill_length_mm, penguins$species), 
  mean, 
  na.rm = TRUE
)

## Print the result
print(bill_length_means)

# Task 4
## Use sapply to create a summary table w/ mean and standard deviation
summary_table <- sapply(
  penguins[sapply(penguins, is.numeric)],
  function(x) c(
    mean = mean(x, na.rm = TRUE),
    sd = sd(x, na.rm = TRUE)
  )
)

## Print the result
print(summary_table)
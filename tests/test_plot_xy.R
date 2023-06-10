# === Test plot_xy() ------------------------------------------------------



# Packages ----------------------------------------------------------------
# Load required packages
library(data.table)
library(janitor)


# Functions ---------------------------------------------------------------
# Load functions
source('R/prepare_csv.R')
source('R/plot_xy.R')



# Data --------------------------------------------------------------------
# Counts path
path_counts <- file.path('raw-data', 'adelie-adult-chick-counts.csv')

DF <- prepare_csv(path_counts)


# Development -------------------------------------------------------------
x_col <- 'date_gmt'
y_col <- 'adults'

plot(DF[[x_col]], DF[[y_col]])

ggplot(DF) +
  geom_point(aes(.data[[x_col]], .data[[y_col]]))


color_col <- 'colony'

ggplot(DF) +
  geom_point(aes(.data[[x_col]], .data[[y_col]], color = .data[[color_col]]))


# Tests -------------------------------------------------------------------
# Test plot histogram
print(plot_xy(DF, x_col, y_col, color_col))


# Each time you run these tests, make sure to source the entire script
#  to ensure you are using an updated version of your function

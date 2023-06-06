# === Test sum_counts() ---------------------------------------------------




# Packages ----------------------------------------------------------------
# Load required packages
library(data.table)
library(janitor)




# Functions ---------------------------------------------------------------
# Load functions
source('R/prepare_csv.R')
source('R/sum_counts.R')



# Data --------------------------------------------------------------------
# Counts path
path_counts <- file.path('raw-data', 'adelie-adult-chick-counts.csv')

# Prepared counts 
counts <- prepare_csv(path_counts)



# Development ------------------------------------------------------------
counts[, sum(adults)]

counts[, sum(chicks)]

counts[, sum(adults), by = island]



# Tests -------------------------------------------------------------------
# Add test
sum_counts(counts)

# Add test of by column
sum_counts(counts, by_cols = 'island')

sum_counts(counts, by_cols = c('island', 'colony'))

# Add test of filter gt year argument
sum_counts(counts, by_cols = 'island', filter_gt_year = 2010)


# Each time you run these tests, make sure to source the entire script
#  to ensure you are using an updated version of your function

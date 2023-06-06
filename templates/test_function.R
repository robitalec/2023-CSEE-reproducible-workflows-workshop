# === Test function() -----------------------------------------------------
# Author



# Packages ----------------------------------------------------------------
# Load required packages
library(data.table)

# Or alternatively, source the packages.R file
source('R/packages.R')



# Functions ---------------------------------------------------------------
# Load function
source('R/plot_histogram.R')



# Data --------------------------------------------------------------------
# Load example data
counts <- fread(file.path('raw-data', 'adelie-adult-chick-counts.csv'))



# Tests -------------------------------------------------------------------
# Add test
plot_histogram(counts, 'Adults', add_title = TRUE)

# Each time you run these tests, make sure to source the entire script
#  to ensure you are using an updated version of your function

# === Test prepare_csv() --------------------------------------------------




# Packages ----------------------------------------------------------------
# Load required packages
library(data.table)
library(janitor)


# Functions ---------------------------------------------------------------
# Load function
source('R/prepare_csv.R')



# Data --------------------------------------------------------------------
# Counts path
path_counts <- 'raw-data/adelie-adult-chick-counts.csv'


# Development -------------------------------------------------------------
DT <- fread(path_counts)
print(colnames(DT))

cleaned_colnames <- colnames(clean_names(DT))
print(cleaned_colnames)

DT_clean <- clean_names(DT)


# Tests -------------------------------------------------------------------
# Add test
prepare_csv(path_counts)

# Each time you run these tests, make sure to source the entire script
#  to ensure you are using an updated version of your function

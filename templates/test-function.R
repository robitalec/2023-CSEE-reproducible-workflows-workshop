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
ice_area <- fread('https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.88.8&entityid=b4062890db09a72628786650dacfbf1f')



# Tests -------------------------------------------------------------------
# Add test
plot_histogram(ice_area, 'Adults', TRUE)

# Each time you run these tests, make sure to source the entire script
#  to ensure you are using an updated version of your function

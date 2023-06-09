library(targets)
tar_source('R')


# Visnetwork
tar_visnetwork()

tar_visnetwork(targets_only = TRUE)

tar_visnetwork(starts_with('plot'))

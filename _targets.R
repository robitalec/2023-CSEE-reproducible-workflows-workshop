library(targets)
tar_source('R')


# Variables
path_counts <- file.path('raw-data', 'adelie-adult-chick-counts.csv')

x_col <- 'date_gmt'
y_col <- 'adults'


# Targets
c(
    tar_target(
        prep_counts,
        prepare_csv(path_counts)
    ),
    tar_target(
        sums,
        sum_counts(prep_counts)
    ),
    tar_target(
        plotted,
        plot_xy(prep_counts, x_col, y_col)
    )
)
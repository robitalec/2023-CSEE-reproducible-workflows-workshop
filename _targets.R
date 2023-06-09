library(targets)
tar_source('R')


# Variables
path_counts <- file.path('raw-data', 'adelie-adult-chick-counts.csv')
path_ice <- file.path('raw-data', 'ice-area.txt')
path_weather <- file.path('raw-data', 'weather-timeseries.csv')

x_col <- 'date_gmt'
y_col <- 'adults'


# Targets
c(
    # Files
    tar_target(
        file_counts,
        path_counts,
        format = 'file'
    ),
    tar_target(
        file_weather,
        path_weather,
        format = 'file'
    ),
 

    # Prepare
    tar_target(
        prep_counts,
        prepare_csv(file_counts)
    ),
    tar_target(
        prep_weather,
        prepare_csv(file_weather)
    ),

    # Group
    tar_group_by(
        group_counts,
        prep_counts,
        island
    ),

    # Sum counts by group
    tar_target(
        sum_groups,
        sum_counts(group_counts, 'island'),
        pattern = map(group_counts)
    ),

    # Plot by group
    tar_target(
        plot_groups,
        plot_xy(group_counts, x_col, y_col),
        pattern = map(group_counts),
        iteration = 'list'
    ),

    # Save plots
    tar_target(
        save_plot,
        ggsave(filename = file.path('figures', group_counts[1, ]$island),
               plot = plot_groups,
               device = 'png'),
        pattern = map(plot_groups, group_counts),
        format = 'file',
        iteration = 'list'
    )
)
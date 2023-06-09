sum_counts <- function(DF, by_cols, filter_gt_year = NULL) {
    setDT(DF)
    
    if (!is.null(filter_gt_year)) {
        DF <- DF[year(date_gmt) > filter_gt_year]
    }

    DF[, .(sum_adults = sum(adults), sum_chicks = sum(chicks)), by = by_cols]
}
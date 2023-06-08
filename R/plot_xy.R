plot_xy <- function(DT, x_col, y_col) {
    stopifnot(x_col %in% colnames(DT))
    stopifnot(y_col %in% colnames(DT))

    ggplot(DT) +
      geom_point(aes(.data[[x_col]], .data[[y_col]]))
}
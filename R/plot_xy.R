plot_xy <- function(DT, x_col, y_col, color_col) {
  stopifnot(x_col %in% colnames(DT))
  stopifnot(y_col %in% colnames(DT))

  stopifnot(color_col %in% colnames(DT))

  ggplot(DT, aes(.data[[x_col]], .data[[y_col]])) +
    geom_line(aes(group = .data[[color_col]])) + 
    geom_point(aes(color = .data[[color_col]]))

}
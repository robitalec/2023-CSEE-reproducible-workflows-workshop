plot_xy <- function(DT, x_col, y_col, title = NULL) {
    stopifnot(x_col %in% colnames(DT))
    stopifnot(y_col %in% colnames(DT))

    stopifnot(is.numeric(DT[[y_col]]))

    if (is.null(title)) {
        plot(DT[[x_col]], DT[[y_col]], xlab = x_col, ylab = y_col)
    } else {
        plot(DT[[x_col]], DT[[y_col]], main = title, xlab = x_col, ylab = y_col)
    }
}
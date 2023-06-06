plot_histogram <- function(DT, col, add_title) {
  stopifnot(col %in% colnames(DT))

  if (add_title) {
    hist(DT[[col]], main = col)
  } else {
    hist(DT[[col]])
  }
}
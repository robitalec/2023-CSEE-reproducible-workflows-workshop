prepare_csv <- function(path) {
    stopifnot(file.exists(path))
    
    DT <- fread(path)

    DT_clean <- clean_names(DT)

    stopifnot(is.data.frame(DT_clean))

    return(DT_clean)
}
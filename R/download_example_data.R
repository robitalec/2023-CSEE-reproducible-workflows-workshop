download_example_data <- function() {
    ls_data <- list(
        'weather-timeseries.csv' = 'https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.189.8&entityid=ab357b4c92531a07d98ff1c4f4809a1e',
        'ice-area.txt' = 'https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.34.7&entityid=0fccb4e99aaa0c0cc85c23284288ec81',
        'adelie-adult-chick-counts.csv' = 'https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.88.8&entityid=b4062890db09a72628786650dacfbf1f'
    )

    lapply(seq_along(ls_data), function(i)  {
        download.file(ls_data[[i]], file.path('raw-data', names(ls_data)[[i]]))
    })
}
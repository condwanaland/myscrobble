library(scrobbler)

mydf <- download_scrobbles()

saveRDS(mydf,
        file = paste0(
          "scrobbles/scrobbles-",
          make.names(Sys.Date()),
          ".Rda")
)

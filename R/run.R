library(scrobbler)

mydf <- download_scrobbles()

saveRDS(mydf,
        file = paste0(
          "scrobbles/scrobbles-",
          make.names(Sys.Date()),
          ".Rda")
)

write.csv(mydf, "scrobbles.csv", row.names = FALSE)

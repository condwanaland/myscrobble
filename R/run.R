library(scrobbler)

mydf <- download_scrobbles()

saveRDS(mydf, file = "scrobbles/scrobbles.Rda")

write.csv(mydf, "scrobbles/scrobbles.csv", row.names = FALSE)

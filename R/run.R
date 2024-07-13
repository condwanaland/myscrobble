library(scrobbler)

#mydf <- download_scrobbles()

url <- "https://raw.githubusercontent.com/condwanaland/myscrobble/main/scrobbles/scrobbles.csv"

data <- read.csv(url)

mydf <- update_scrobbles(data, 'date_unix')

saveRDS(mydf, file = "scrobbles/scrobbles.Rda")

write.csv(mydf, "scrobbles/scrobbles.csv", row.names = FALSE)

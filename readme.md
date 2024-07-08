This is a repo I use to store a snapshot of my scrobble history once per week. It uses my [scrobbler](https://github.com/condwanaland/scrobbler) to query the Last.fm API and fetch all the songs I have listened to. 

It uses a Github Action to run the script located at `/R/run.R` and commits the files to the `/scrobbles` directory. 

The Github Action file is located at `.github/workflows/run-scrobbles.yaml`. The Last.fm API requires authentication - this is handled using secrets stored in the repository settings. Check out lines 22 and 23 for how to get and store those as environment variables that the R file can then pick up. 

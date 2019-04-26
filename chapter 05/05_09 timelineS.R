# timelineS

install.packages("timelineS")
library(timelineS)

# Thanks to https://github.com/shivaas for the data
us_holidays <- read.table("https://gist.githubusercontent.com/shivaas/4758439/raw/b0d3ddec380af69930d0d67a9e0519c047047ff8/US%2520Bank%2520holidays",
                          sep = ",",
                          colClasses = c("numeric", "Date", "character"),
                          stringsAsFactors = FALSE)
us_holidays[1] <- NULL # don't need that column
us_holidays_2015 <- us_holidays[ (us_holidays$V2 > as.Date("2015-01-01") & us_holidays$V2 < as.Date("2016-01-01"))  , c(2,1)]


timelineS(df = us_holidays_2015,
          scale = "month",
          buffer.days = 50,
          labels = us_holidays_2015$V3)


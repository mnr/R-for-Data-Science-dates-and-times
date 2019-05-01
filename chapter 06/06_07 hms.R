# hms

install.packages("hms")
library(hms)

timeString <- "12:23:34"

# parse_hms ---------------------------------------------------------------

anHMStime <- parse_hms(timeString)

class(anHMStime) # stored as our old friend difftime

parse_hm(timeString) # no need for minutes

# converting a date time string to just time
as.hms(as.POSIXct(paste("2019-01-01",timeString), "%Y-%m-%d %H:%M:%S", tz = Sys.timezone()))

# hms converts numerics and rounds and truncates
whatDoTheseNumbersBecome <- c(1,60,61,370,19345)

data.frame("Input" = whatDoTheseNumbersBecome, 
           "converted to" = hms(whatDoTheseNumbersBecome),
           "rounded_60" = round_hms(whatDoTheseNumbersBecome, secs = 60),
           "rounded_40" = round_hms(whatDoTheseNumbersBecome, secs = 40),
           "truncated_60" = trunc_hms(whatDoTheseNumbersBecome, secs = 60))

           
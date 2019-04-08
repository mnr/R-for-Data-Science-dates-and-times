# logical operators with dates

theEpoch <- as.Date("1970-01-01")
todayDate <- Sys.Date()

theEpoch < todayDate

theEpoch <= todayDate

theEpoch > todayDate

theEpoch == todayDate

# how would you use this?

sampleYearData <- seq.Date(from = as.Date("1970-01-01"), 
         to = Sys.Date(),
         by = "years")

sampleYearData[sampleYearData > as.Date("2001-01-01")]

# what about mixed dates and times?
sampleYearTimeData <- seq.POSIXt(from = as.POSIXct("1970-01-01 12:23"), 
                               to = Sys.time(),
                               by = "years")

sampleYearData[sampleYearData > sampleYearTimeData]
# Incompatible methods ("Ops.Date", "Ops.POSIXt") for ">"

# documentation
?Ops.Date


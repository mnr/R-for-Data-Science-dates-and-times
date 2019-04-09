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
sampleYearPOSIXctData <- seq.POSIXt(from = as.POSIXct("1970-01-01 12:23"), 
                               to = Sys.time(),
                               by = "years")

sampleYearData[sampleYearData > sampleYearPOSIXctData]
# Incompatible methods ("Ops.Date", "Ops.POSIXt") for ">"


# but this works
sampleYearPOSIXltData <- seq.POSIXt(from = as.POSIXlt("1970-01-01 12:23"), 
                                    to = Sys.time(),
                                    by = "years")

sampleYearPOSIXltData[sampleYearPOSIXltData > sampleYearTimeData]


# documentation
?Ops.Date


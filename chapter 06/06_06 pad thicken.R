# padr

install.packages("padr")
library(padr)

# create a chunck of data
dateSequence <- seq(from = as.Date("2019-01-01"), 
                                   to = as.Date("2019-03-01"), 
                                   by = 10)
# ...or use the padr version
dateSequence <- span_date(from = 20190101, 
                          to = 20190301,
                          by = 10)
                    
someTimeData <- data.frame(timestamp = dateSequence,
                           observedValue = 1:length(dateSequence))

# make some data missing
someTimeData <- someTimeData[-3, ]

# pad ---------------------------------------------------------------------
someTimeData <- pad(someTimeData) # pad replaces the missing timestamp, but not the variable

# thicken -----------------------------------------------------------------
someTimeData <- thicken(someTimeData, interval = "month")
center_interval(someTimeData$timestamp)

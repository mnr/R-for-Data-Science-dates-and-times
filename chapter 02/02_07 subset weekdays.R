# weekdays(), months(), days() or quarters()

# create a vector to play with
hours_2001 <- seq.POSIXt(from = as.POSIXct("2001/02/01 00:00:00"),
                         to = as.POSIXct("2002/02/02 00:00:00"),
                         by = "hour")

head(hours_2001)

# run through the functions
weekdays(hours_2001)
weekdays(hours_2001, abbreviate = TRUE)

months(hours_2001)
quarters(hours_2001)
julian(hours_2001)

# practical example
# detailed info for timestamps
hoursAndMore <- data.frame(timestamp = hours_2001, 
                           weekday = weekdays(hours_2001),
                           month = months(hours_2001),
                           quarter = quarters(hours_2001),
                           since1970 = julian(hours_2001, 
                                              origin = as.POSIXct("1970-01-01", 
                                                                  tz = Sys.timezone())
                                              )
)


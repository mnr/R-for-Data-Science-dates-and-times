install.packages("BusinessDuration")
library(BusinessDuration)

# business duration is like difftime (or Lubridate interval)
# but accounts for Business open and close
# and weekends and holidays
# BusinessDuration returns a numeric

# Oktoberfest in Munich 2019 
# begins at 1:45 AM on Saturday, September 21 PST
# and ends on Sunday, October 6 PST
Oktoberfest_starts <- as.POSIXct("September 21, 2019 1:45 am", 
           "%B %d, %Y %I:%M %p", 
           tz = "America/Los_Angeles")
Oktoberfest_ends <- as.POSIXct("October 6, 2019 6:00 pm",
                               "%B %d, %Y %I:%M %p", 
                               tz = "America/Los_Angeles")


businessDuration(startdate = Oktoberfest_starts,
                 enddate = Oktoberfest_ends,
                 starttime =  "08:00:00",
                 endtime =  "17:00:00",
                 unit = "hour"
                 )
# equals 99 business hours

# compare with total hours
difftime(Oktoberfest_ends, Oktoberfest_starts, units = "hour") # 376 hours

# what about holidays?
Oktoberfest_holiday <- as.Date(c("2019-09-25", "2019-09-26"))

businessDuration(startdate = Oktoberfest_starts,
                 enddate = Oktoberfest_ends,
                 starttime =  "08:00:00",
                 endtime =  "17:00:00",
                 unit = "hour",
                 holidaylist = Oktoberfest_holiday
)

# weekends
Okt_weekends <- c("Saturday", "Sunday") # this is the default
Okt_weekends <- NULL # No weekends
Okt_weekends <- "Wednesday"

businessDuration(startdate = Oktoberfest_starts,
                 enddate = Oktoberfest_ends,
                 starttime =  "08:00:00",
                 endtime =  "17:00:00",
                 unit = "hour",
                 weekendlist = Okt_weekends
)

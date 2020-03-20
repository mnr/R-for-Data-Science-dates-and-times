# parsing dates with lubridate
# affiliate: https://linkedin-learning.pxf.io/rdatesLubridateParsing

# be sure lubridate 
install.packages("lubridate")
library(lubridate)

# lubridate clarifies common tasks
today() # equivalent to Sys.Date()
now() # equivalent to Sys.time()

# and it does so with standard classes of Date and POSIXct
# as_date and as.Date produce the same class
class(as_date("1881/10/25")) # from lubridate
class(as.Date("1881/10/25")) # from base R

# simpler strptime
strptime("2014-07-13 16:00:00 -0300", "%Y-%m-%d %H:%M:%S %z") # time zone is messed up
parse_date_time("2014-07-13 16:00:00 -0300", "ymd HMS z") # time zone works

# lubridate takes it one step further
ymd("2014-07-13 16:00:00 -0300")
ymd_hms("2014-07-13 16:00:00 -0300")
mdy_hm("July 13, 2014 4:00 pm")

# and not just with Dates and Times. Also difftimes
# requires hms library
install.packages("hms")
library(hms)

class(as.hms("16:00:00")) # produces difftime



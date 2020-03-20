# seq, round, trunc, cut
# affiliate: https://linkedin-learning.pxf.io/rdatesCutSeq

# seq.date & POSIX
# produces an error until to=20019/02/28
DaysOfFeb <- seq.Date(from = as.Date("2019/02/01"),
                      to = as.Date("2019/02/31"),
                      by = "day")

TimesToday <- seq.POSIXt(from = as.POSIXct("2001/02/01 00:00:00"),
                         to = as.POSIXct("2001/02/02 00:00:00"),
                         by = "hour")
# by = has many options. # of seconds, difftime, sec/min/hour...
# by = "3 sec" or "5 hours"

TimesToday <- seq.POSIXt(from = as.POSIXct("2001/02/01 00:00:00"),
                         by = "hour",
                         length.out = 23)

twentyTwoObservations <- letters[1:22]

TimesToday <- seq.POSIXt(from = as.POSIXct("2001/02/01 00:00:00"),
                         by = "hour",
                         along.with = twentyTwoObservations)

timedObservations <- data.frame(TimesToday, twentyTwoObservations)


# round.Date & POSIX
# round.Date is rarely used except when you've achieved fractional days
Sys.time()
round(Sys.time(), "hour")
round(Sys.time(), "year")
floor(Sys.time()) # nope

# trunc - essentially round off or trunc
Sys.time()
trunc(Sys.time(), "hour")

# cut.date & cut.POSIX
cut(DaysOfFeb, 3, labels = c("Low", "Medium", "High"))
cut(DaysOfFeb, "week") # sec min hour day DSTday week month quarter year
# practical example. Attach the starting sunday to each date by week
data.frame(DaysOfFeb, 
           "Week Made" = cut(DaysOfFeb, "week", start.on.monday = FALSE))

# ...and dates
cut(timedObservations$TimesToday, 4, labels = c("Pre-Dawn", "Morning", "Afternoon", "Evening"))
timedObservations$phase <- cut(timedObservations$TimesToday, 4, labels = c("Pre-Dawn", "Morning", "Afternoon", "Evening"))

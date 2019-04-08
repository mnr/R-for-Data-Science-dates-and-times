LochNessMonsterDiscovered <- as.Date("1993-05-02")

class(LochNessMonsterDiscovered) # returns class of Date

LochNessMonsterDiscovered <- ISOdate(1993, 05, 02)
class(LochNessMonsterDiscovered) # returns class of POSIXct

Sys.Date() - LochNessMonsterDiscovered # error
howLongLoch <- as.POSIXct(Sys.Date()) - LochNessMonsterDiscovered # works, but difftime

howLongLoch

threeDays <- as.POSIXlt("1970-01-03")

howLongLoch + threeDays

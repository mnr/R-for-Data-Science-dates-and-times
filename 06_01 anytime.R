# anytime package

install.packages("anytime")
library(anytime)


# incoming ----------------------------------------------------------------

anydate(20190426 + 0:2)
anydate("2019_04_26")
anytime("20190426 0938")
anytime("March 14, 2015")
savethistime <- anytime("20190426 0938", tz = "EST")

class(anytime("20190426 0938"))
class(anydate("2019_04_26"))


# outgoing ----------------------------------------------------------------

iso8601(savethistime)
rfc2822(savethistime)
rfc3339(savethistime)
yyyymmdd(savethistime)


# interesting tidbits -----------------------------------------------------

getFormats()

anytime("may Thur 23 2010") # doesn't work
addFormats("%b %a %d %Y")  # add the format
anytime("Thur may 23 2010") # now it works

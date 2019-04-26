# mondate

install.packages("mondate")
library(mondate)

GraceHopper <- as.mondate("December 9, 1906", format = "%B %d, %Y")

jan1906 <- as.mondate("1906-01-01")

GraceHopper

GraceHopper - jan1906 # result in months and fractions of mondays

as.Date("1906-12-09") - as.Date("1906-01-01") # result in days

# math works like you expect
GraceHopper + 1 # assumes month
add(GraceHopper, 1, "years")
add(GraceHopper, 1, "days")

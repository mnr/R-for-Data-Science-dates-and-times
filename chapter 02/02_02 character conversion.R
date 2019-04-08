InternationalProgrammerDay <- "January 7, 2020"

as.Date("January 7, 2020") # character string is not in a standard unambiguous format

as.Date("January 7, 2020",
        format = "%B %d, %Y") # character string is not in a standard unambiguous format

?strptime


FranceVsCroatia <- "Sunday, July 15 2018	11"

as.POSIXct(FranceVsCroatia, format = "%A, %B %d %Y %H")

# the actual string was 
# Date	Time (ET)	Contest	Matchup	TV	Stream
# Sunday, July 15	11 a.m.	WC Final	France vs. Croatia	FOX	FOX Sports Go
# year was missing

usedStrptime <- strptime(FranceVsCroatia, format = "%A, %B %d %Y %H")
class(usedStrptime)

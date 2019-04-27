# datetime

install.packages("datetime")
library(datetime)


Cornelia_Sorabji <- as.datetime("15 November 1866", "%d %b %Y")

Cornelia_Sorabji

tensec <- as.second(10)
tenweeks <- as.week(10)
class(tensec)

Cornelia_Sorabji + as.year(2)
Cornelia_Sorabji + as.week(30)

# chapter 01_01

year_month_data <- read.csv("~/R-for-Data-Science-dates-and-times/chapter 01/year_month_data", 
                            sep="", 
                            stringsAsFactors=FALSE)

#you might try this...
as.Date(year_month_data$YearMonth) # character string not recognized

as.Date(year_month_data$YearMonth, "%Y-%m") # NA NA ...

as.Date(paste0(year_month_data$YearMonth,"-01"), "%Y-%m-%d") # works because complete date specified


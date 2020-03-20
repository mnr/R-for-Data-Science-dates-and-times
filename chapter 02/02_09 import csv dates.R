# import csv files with dates intact. 
# Learn how to use colClasses = Date for POSIXct and POSIXlt.
# affiliate: https://linkedin-learning.pxf.io/rdatesImportCSV

# dates as character
year_month_data <- read.csv("chapter 02/year_month_day_data.csv", 
                            sep = ",",
                            stringsAsFactors=FALSE)

# dates as Date
year_month_data <- read.csv("chapter 02/year_month_day_data.csv", 
                            colClasses = c("Date","integer"),
                            sep = ",",
                            stringsAsFactors=FALSE)
# dates as POSIXct
year_month_data <- read.csv("chapter 02/year_month_day_data.csv", 
                              colClasses = c("POSIXct","integer"),
                              stringsAsFactors=FALSE)

# date isn't formatted in a way it can understand
year_month_data <- read.csv("chapter 01/year_month_data.csv", 
                            colClasses = c("Date","integer"),
                            sep = ",",
                            stringsAsFactors=FALSE)

# or...use the readr package
# install.packages("readr")
library(readr)

rr_year_month_day_data <- read_csv("chapter 02/year_month_day_data.csv", 
                                             col_types = cols(YearMonth = col_datetime(format = "%Y-%m-%d %H:%M:%S")))

year_month_data <- read_csv("chapter 01/year_month_data.csv", 
                            col_types = cols(YearMonth = col_date(format = "%Y-%m")))
                                             
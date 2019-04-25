# timeliner

install.packages("timelineR")
library(timelineR)


# grab some data ----------------------------------------------------------

weatherData <- read.table("https://raw.githubusercontent.com/lyndadotcom/LPO_weatherdata/master/Environmental_Data_Deep_Moor_2012.txt",
                          header = TRUE,
                          stringsAsFactors = FALSE)

# create some values ------------------------------------------------------

weatherData$timestamp <- as.POSIXct(paste(weatherData$date, weatherData$time),
                               format = "%Y_%m_%d %H:%M:%S",
                               tz = "America/Los_Angeles")

weatherData$windDescription <- cut(weatherData$Wind_Speed,
                                   breaks = c(0,11,28,38,61),
                                   labels = c("Light Wind", "Gentle Breeze", "Fresh Wind", "Strong Wind")
)

# plot the timeline -------------------------------------------------------
# note that we're plotting a dataframe - NOT ts, zoo, xts, tsibble, or tibbletime

plot_timeline(timeline_df = weatherData,
              data_cols = c("Air_Temp", "Barometric_Press", "windDescription"),
              start_time = weatherData$timestamp[1],
              end_time = weatherData$timestamp[nrow(weatherData)])

# factor variable (i.e. windDescription) must be first
plotTheseTogether <- list("wind gust vs wind speed" = c( "windDescription", "Wind_Gust"))

plot_timeline(timeline_df = weatherData,
              data_cols = c("Wind_Gust", "windDescription"),
              start_time = weatherData$timestamp[1000],
              end_time = weatherData$timestamp[5000],
              overlap_plots_names = plotTheseTogether)


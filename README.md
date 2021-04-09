# R-for-Data-Science-dates-and-times

Source code in support of the LinkedIn Learning course "[**R Programming in Data Science: Dates and Times**](https://linkedin-learning.pxf.io/R_datesandtimes)"

<table><thead><tr class="header"><th><p><strong>Introduction</strong></p></th><th><p></p></th><th><p></p></th></tr></thead><tbody><tr class="odd"><td></td><td><p>Calculating Times and Dates with R</p></td><td><p>Learn why Dates and Times are important concepts in data science.</p></td></tr><tr class="even"><td><p><strong>1. Why are Dates and Times in R Confusing?</strong></p></td><td><p><br />
</p></td><td><p><br />
</p></td></tr><tr class="odd"><td></td><td><p>Typical date calculations</p></td><td><p>Learn how to recognize when to use date and time operators</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>How dates and times are stored in R</p></td><td><p>Learn what the Date object contains and how this is useful.</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>Choose the right Date and Time tool</p></td><td><p>Learn how to select the best date or time tool for a particular application.</p></td></tr><tr class="even"><td><p><strong>2. Dates and Times in Base R</strong></p></td><td><p><br />
</p></td><td><p><br />
</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>The Base R "Date" Class</p></td><td><p>Base R provides a small set of functions and classes for dates and times, but how can they be used to best advantage? Gain an understanding of tools available in Base R for the manipulation of Times and Dates.</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>Use formatters to recognize dates in character strings</p></td><td><p>Learn how to specify the position of years, months, days, hours, minutes, and seconds.</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>Dealing with timezones and daylight savings time</p></td><td><p>Learn about using the tz parameter in the as.POSIXct( ) function.</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>Use operators to compare date objects</p></td><td><p>Learn how to determine if one time is greater-than, less-than, or equal to another date or time.</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>Adding and Subtracting Dates and Times</p></td><td><p>Learn how to use difftime to store the interval between two dates.</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>Create sequences of dates, cut dates, and round dates</p></td><td><p>Learn about seq.Date(), cut.Date(), and round.Date()</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>Extract parts of a date</p></td><td><p>Learn how to obtain the hour, minutes, and more from a Date object.</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>Presenting formatted dates and times</p></td><td><p>We talk about dates in different ways, randomly mixing day of the month, month name, day of the week and everything else. R provides configurable tools to express this in whatever way necessary.</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>use read.csv() to import csv date information</p></td><td><p>Learn how to use colClasses = Date for POSIXct and POSIXlt.</p></td></tr><tr class="even"><td><p><strong>3. Lubridate and the Tidyverse</strong></p></td><td><p><br />
</p></td><td><p><br />
</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>Advantages of the Lubridate package</p></td><td><p>Learn how lubridate combines several date functions in a coherent flow.</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>Parsing date and time with Lubridate</p></td><td><p>Learn about ymd_hms(), today(), now() and other functions.</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>Getting and Setting time components with Lubridate</p></td><td><p>Learn about date(), year(), and other functions that set parts of a date.</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>Rounding dates and time with lubridate</p></td><td><p>Learn how to use floor, round, and ceiling to manipulate dates.</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>Lubridate math with durations</p></td><td><p>Recording time requires a way to record how long an event takes, regardless of when it starts or stops. For this, Lubridate provides durations</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>Lubridate math with periods</p></td><td><p>Time marches on, but human time starts and stops. The calendar doesn't accurately line up with leap years and the phase of the moon. For this, lubridate provides periods.</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>Lubridate math with intervals</p></td><td><p>Some time intervals start and stop at certain times - my current age, for example. For this, lubridate provides the interval class.</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>Time zones with Lubridate</p></td><td><p>Learn how to use UTC and other time zone names to adjust time to a locale.</p></td></tr><tr class="odd"><td><p><strong>4. Dates and Times for Business and Finance</strong></p></td><td><p><br />
</p></td><td><p><br />
</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>The "busdater" package</p></td><td><p>Learn how to get a current financial year, start and end of current month, or start and end of financial year.</p></td></tr><tr class="odd"><td><p><strong><br />
</strong></p></td><td><p>The "businessDuration" package</p></td><td><p>Learn how to calculate business duration between two dates.</p></td></tr><tr class="even"><td><p><strong><br />
</strong></p></td><td><p>The "fmdates" package</p></td><td><p>Learn how to check if dates are business days in certain locales and adjust date calculations.</p></td></tr><tr class="odd"><td><p><strong>5. Working with time-series data</strong></p></td><td><p><br />
</p></td><td><p><br />
</p></td></tr><tr class="even"><td><p><strong><br />
</strong></p></td><td><p>Time-series data</p></td><td><p>Learn three key differences between the two types of data.</p></td></tr><tr class="odd"><td><p><strong><br />
</strong></p></td><td><p>The base R "ts" class</p></td><td><p>Learn how to create time-series data, manipulate it, and plot it.</p></td></tr><tr class="even"><td><p><strong><br />
</strong></p></td><td><p>The "zoo" package</p></td><td><p>Learn how the zoo package is unique and when to use it.</p></td></tr><tr class="odd"><td><p><strong><br />
</strong></p></td><td><p>The "xts" package</p></td><td><p>Learn about subsetting a dataframe by date.</p></td></tr><tr class="even"><td><p><strong><br />
</strong></p></td><td><p>The "tsibble" and "tibbletime" packages</p></td><td><p>Learn how this tidyverse object provides time-based subsetting, aggregating by time, and time groups.</p></td></tr><tr class="odd"><td><p><strong><br />
</strong></p></td><td><p>Tme series rolling statistics</p></td><td><p>Learn about moving averages, trend analysis, ARMA and ARIMA</p></td></tr><tr class="even"><td><p><strong><br />
</strong></p></td><td><p>Time series graphics</p></td><td><p>Learn how to use plot.ts, plot.xts, and plot.zoo.</p></td></tr><tr class="odd"><td><p><strong><br />
</strong></p></td><td><p>The "timelineR" package</p></td><td><p>Learn how to use plot-timeline() to easily create timelines of time-series data.</p></td></tr><tr class="even"><td><p><strong><br />
</strong></p></td><td><p>The "timelineS" package</p></td><td><p>Learn to use timelineG() and timelineS() to plot advanced graphs of time-series data.</p></td></tr><tr class="odd"><td><p><strong><br />
</strong></p></td><td><p>The CRAN Task View for Time Series Analysis</p></td><td><p>Learn where to find tutorials, examples, and resources for working with Time-Series data.</p></td></tr><tr class="even"><td><p><strong>6. Specialized Date and Time packages</strong></p></td><td><p><br />
</p></td><td><p><br />
</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>The "anytime" package</p></td><td><p>Learn when anytime is the best tool for date time conversion into POSIXct.</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>The "hms" package</p></td><td><p>Learn how to use parse_hms() to create difftime objects from character vectors.</p></td></tr><tr class="odd"><td><p><strong><br />
</strong></p></td><td><p>The "mondate" package</p></td><td><p>Learn how to use mondate to calculate dates in terms of months</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>The "datetime" package</p></td><td><p>Learn how datetime provides simplified handling of date time conversion.</p></td></tr><tr class="odd"><td><p><br />
</p></td><td><p>The "datetimeutils" package</p></td><td><p>Learn how to use datetimeutils to select days of the week, format timestamps for RSS, and convert dates to MATLAB and Excel.</p></td></tr><tr class="even"><td><p><strong><br />
</strong></p></td><td><p>The "padr" package</p></td><td><p>Learn how to deal with time-series over-plotting and missing data.</p></td></tr><tr class="odd"><td><p><strong>Conclusion</strong></p></td><td><p><br />
</p></td><td><p><br />
</p></td></tr><tr class="even"><td><p><br />
</p></td><td><p>Next steps</p></td><td><p><br />
</p></td></tr></tbody></table>

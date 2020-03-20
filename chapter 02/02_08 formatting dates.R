# formatting dates for output
# affiliate: https://linkedin-learning.pxf.io/rdatesFormatting

TimeNow <- Sys.time()

# all the same
strftime(TimeNow, "Time Now! Hour:%H, Minute:%m")
format(TimeNow, "Time Now! Hour:%H, Minute:%m")
as.character(TimeNow, "Time Now! Hour:%H, Minute:%m")


# all of the modifiers
for (converter in sort(c(letters,LETTERS))) {
  modifier <- paste0("%",converter)
  print(paste(modifier, 
              TimeNow,
              strftime(TimeNow, modifier),
              sep = " ... "))
}


#install.packages("forecast", dependencies = TRUE)
library(forecast)

#reading the initial data
temps <- read.table('', stringsAsFactors = FALSE, header = TRUE)
print(temps)

#converting data to time series
b <- as.vector(unlist(temps[,2:21]))
print(b)
plot(b)

temps_ts <- ts(b, start = 1996, frequency = 123)
print(temps_ts)
plot(temps_ts)

#applying HoltWinters method for smoothing data
tempsHW = HoltWinters(temps_ts, alpha = NULL, beta = NULL, gamma = NULL, seasonal = "additive")
print(tempsHW)
print(tempsHW$fitted)
plot(tempsHW)
plot(tempsHW$fitted)

#creating matrix to make series arranged by day and year
tempsHW_smoothed <- matrix(tempsHW$fitted[,1], nrow=123)
print(tempsHW_smoothed)

setwd("C:\\Users\\it24100170\\Desktop\\IT24100170")

Delivery_Times <- read.table("Exercise - Lab 05.txt",header=TRUE)  #import data set
print(Delivery_Times)

hist(Delivery_Times$Delivery,
     breaks = seq(20,70,by=5),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times",
     ylab = "Frequency")

hist_data <- hist(Delivery_Times$Delivery,
                  breaks = seq(20,70,by=5),
                  right = FALSE,
                  plot = FALSE)

cumulative_freq <- cumsum(hist_data$counts)

plot(hist_data$mids, cumulative_freq,
     type = "o",
     main = "Cu,ulative Frequency Polygon(Ogive)",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16)
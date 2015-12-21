initfile <- function(){
        library(plyr)
        datawithna <- read.csv("Dropbox (Aspiraclip)/MOOC/Data Scientist/RepData_PeerAssessment1/activity.csv")
        datawithna$date  <- as.Date(datawithna$date)
        data  <- datawithna[!is.na(datawithna$step),]
        stepsperday  <- ddply(data, .(date), summarize, steps = sum(steps))
        hist(stepsperday$steps)
        median(stepsperday$steps)
        mean(stepsperday$steps)
        stepsperinterval  <- ddply(data, .(interval), summarize, steps = mean(steps))
        plot(stepsperinterval$interval, stepsperinterval$steps, type = "l")
        
        
        result <- sum(is.na(datawithna$step))
        
}

isweekday <- function(day){
        ifelse(day == "Saturday" | day == "Sunday",result <- "weekend",result <-  "weekday")
}


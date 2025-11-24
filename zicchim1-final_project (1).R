# Set working directory 
setwd ("/courses/STA145/zicchim1")

### Upload data 
library(readr)
data <- read_csv("data.csv")

#### Descriptive statistics 
# qual var 
table(data$guest_stars)

#quant var
summary(data$ratings_episodes)

#box plot 
boxplot(data$ratings_episodes ~ data$guest_stars )

t.test(data$ratings_episodes ~ data$guest_stars )

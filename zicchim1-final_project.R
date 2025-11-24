# Set working directory 
setwd ("/courses/STA145/zicchim1")

### Upload data 
library(readr)
data <- read_csv("data.csv")

#### Descriptive statistics 
# qual var 
table(data$episode_awards)

#quant var
summary(data$quantvar)

#box plot 
boxplot(data$qualvar)

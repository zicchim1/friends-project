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

## Chi Squared
chisq.test(data$ratings_episodes, data$guest_stars)

# Creation of Residual 
model <- lm(guest_stars ~ ratings_episodes, data = data)
plot(fitted(model),
     residuals(model),
     xlab = "Fitted Values",
     ylab = "Residuals",
     main = "Residuals vs Fitted Values")
abline(h = 0)
plot(model$model$ratings_episodes,
     residuals(model),
     xlab = "Ratings",
     ylab = "Residuals",
     main = "Residuals vs Ratings")
abline(h = 0)

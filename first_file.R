install.packages("tidyverse")
library(readr)

setwd("~/Desktop/programming/pa/zestimate") 

# Load files
sample_submission <- read_csv("sample_submission.csv")
prop_2016 <- read_csv("properties_2016.csv")
prop_2017 <- read_csv("properties_2017.csv")
train_2016 <- read_csv("train_2016_v2.csv")
train_2017 <- read_csv("train_2017.csv")

# Explore datasets
head(sample_submission)
head(prop_2016)
head(prop_2017)
head(train_2016)
head(train_2017)

# FAQs
ncol(prop_2016)     # 58 cols
nrow(prop_2016)     # 2,985,217 properties
colnames(prop_2016) 

nrow(train_2016)    # 90,275

View(prop_2016)
View(train_2016)

# todo: inner join to see the selected properties for train_2016. Are they just random subsets?

# Inner join 
train_2016_joined <- merge(prop_2016, train_2016, by = "parcelid")
train_2017_joined <- merge(prop_2017, train_2017, by = "parcelid")

#====== Prediction

# split test and train
train <- train_2016_joined
train_rough <- na.omit(train_2016_joined)
lapply(train, levels)
test <- train_2017_joined

# fitting
lm.fit1 <- lm(logerror ~ ., data = train_rough)
summary(lm.fit1)
View(train)

####

# creating actual predictions
pred3 <- predict(lm.fit3, test_df2)
test_df2 <- mutate(test_df2, predicted = pred3)

# plotting predicted vs real
ggplot(test_df2, aes(predicted, num_total_complaints)) + geom_point()

# plotting regression (predicted = red, actual = grey)
ggplot(data = test_df2) + geom_point(aes(mean_income, num_total_complaints), color = "gray") + geom_point(aes(mean_income, predicted), color = "red")

mse(lm.fit3) # 2356.732






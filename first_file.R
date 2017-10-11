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

# todo: inner join to see the selected properties for train_2016. Is this random?
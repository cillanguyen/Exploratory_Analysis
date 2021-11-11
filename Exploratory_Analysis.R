#install dplyr and tidyverse to use the functions
install.packages("dplyr")
library(dplyr)
install.packages("tidyverse")
library(tidyverse)

#REFLECTION: summary and description about the dataset

#read in happiness report 2018 and 2019
df_2018 <- read.csv("https://raw.githubusercontent.com/cillanguyen/Exploratory_Analysis/main/2018.csv?token=AV3A5G2IPUNA6LKTTJ6VZL3BRRY4E")
df_2019 <- read.csv("https://raw.githubusercontent.com/cillanguyen/Exploratory_Analysis/main/2019.csv?token=AV3A5GZ4UF654PL43R5V37LBRRZAG")

#how many rows in each dataset
row_2018 <- NROW(df_2018)
col_2018 <- NCOL(df_2018)

row_2019 <- NROW(df_2019)
col_2019 <- NCOL(df_2019)

#REFLECTION: what is the purpose of each column and what are they?

# find the min of "scores" in 2018

# find the max of "scores" in 2019

#round the datasets to the nearest hundredths place
# Please note, the last column of dataset 2018 is not rounded yet.

df_2018 <- df_2018 %>% 
  mutate(across(where(is.numeric), round, 2))
  
df_2019 <- df_2019 %>%
  mutate(across(3:9, round, 2)) 

#use groupby to get the range of the scores in the both dataset

#Make a Scatterplot based on the score and GDP
#REFLECTION: what is the purpose of analyzing the score and the GDP?

#Make a bar chart, with y = scores, x = each individial column for both dataset
# REFLECTION: why is this revelant?

#Make a map based on the countries and region. Just one map, since the two dataset
#contains the exact same locations
#REFLECTION: why analyze the locations?




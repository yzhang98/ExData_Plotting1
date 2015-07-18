# read data
hpc_all <- read.table("household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
# Convert data frame to tbl_df for fast processing
library(dplyr)
hpc_all_tbl <- tbl_df(hpc_all)
rm(hpc_all)
# extract the two day's data that we are interested
# Note date format is "day/month/year". day and month have only 1 digit. year is four digits.
hpc_2d <- filter(hpc_all_tbl, Date == "1/2/2007" | Date == "2/2/2007")
# create a POSXlt vector as x axis variable for plots
hpc_2d_datetime <- strptime(paste(hpc_2d$Date, hpc_2d$Time), format = "%d/%m/%Y %H:%M:%S")
# Note that mutate funciton cannot be used to add POSXlt vector to data frame.
# An error will be given if you do so. POSXlt is not supported by data frame.


## Deliverable 1: Linear Regression to Predict MPG

# Import dplyr package
library(tidyverse)

# Read in MechaCar_mpg.csv as a dataframe
MechaCar_mpg <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Check read of CSV and column names
head(MechaCar_mpg)

# Perform Linear Regression on all variables focused on performance
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

# Using summary() function, determin the p-value and r-squared value for the model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))

## Deliverable 2: Create Visualizations for the Trip Analysis

# Import/Read Suspension_Coil.csv as a table
Coil_table <- read.table("Suspension_Coil.csv", header = TRUE, sep =",")

# Create total_summary dataframe with summary stats for PSI
total_summary = Coil_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance= var(PSI), SD = sd(PSI))

# Create a lo_summary dataframe with summary stats for PSI that are grouped by Manufacturing_Lot
lot_summary <- Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance= var(PSI), SD = sd(PSI))

## Deliverable 3: t-Tests on Suspension Coils
# sample of population for t-Test
sample_coil <- Coil_table %>% sample_n(50)
# Perform a t-Test to determine if PSI is statistically different across all lots
t.test(sample_coil$PSI, mu=mean(Coil_table$PSI))
# t.test(sample_coil$PSI, mu=1500)

# Perform a t-Test to determine if PSI from each lot is statistically different
t.test(subset(Coil_table$PSI, Coil_table$Manufacturing_Lot == "Lot1"), mu=mean(Coil_table$PSI))
t.test(subset(Coil_table$PSI, Coil_table$Manufacturing_Lot == "Lot2"), mu=mean(Coil_table$PSI))
t.test(subset(Coil_table$PSI, Coil_table$Manufacturing_Lot == "Lot3"), mu=mean(Coil_table$PSI))

# t.test(subset(Coil_table$PSI, Coil_table$Manufacturing_Lot == "Lot1"), mu=1500)
# t.test(subset(Coil_table$PSI, Coil_table$Manufacturing_Lot == "Lot2"), mu=1500)
# t.test(subset(Coil_table$PSI, Coil_table$Manufacturing_Lot == "Lot3"), mu=1500)

########################### START ###########################
try(dev.off(), silent = TRUE) # Clear all plots.
rm(list=ls())                 # Clear the Global Environment.
closeAllConnections()         # Clear any existing functions.
cat("\014")                   # Clear the Console.
#-----------------------------------------------------------#

##### SET UP WORK DIRECTORY #####

# Use "setwd()" to set up a work directory for this R session
setwd("/Users/dforsberg1/Desktop/R_series")

#### Linear Regression in R ####






#### Look at data.frame Contents ####

# Names of variables



# Number of observations and number of variables



# Clean up "date" column



# Convert housing$date to date formatting



#### Create a Scatterplot ####











browseURL("http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf")

#### Linear Regression ####

# Use the "lm()" function to create a linear regression





# What is the predicted price if sqft_living is 1500 sq ft?
# price_pred = -43580.7 + 280.6 * (1500)



# What if the square footage increases by 100 sq ft?



# What is the predicted change in price per every 100 sq ft?



#### Create data.frame with predicted prices & real prices ####




# Calculate SSE = Sum of Squares due to Error
# i.e. SSE = summation(Y.i - Yhat.i)^2





# Calculate SSR = Sum of Squares due to the Regression
# i.e. SSR = summation(Yhat.i - Ybar)^2





# Calculate SST = Sum of Squares Total
# SST = summation(Y.i - Ybar)^2



# Calculate R-squared
# R2 = SSR/SST = 1 - (SSE/SST)



#### What is R-squared? ####

# The R-Squared is 0.49. This implies that 49% of the variability
# of the dependent variable has been accounted for, and the remaining
# 51% of the variability is still unaccounted for.

# Calculate adjusted R-Squared







#### What is adjusted R-squared? ####

# Adjusted R2 also indicates how well terms fit a curve or line, but
# adjusts for the number of terms in a model. If you add more and
# more useless variables to a model, adjusted r-squared will decrease.
# If you add more useful variables, adjusted r-squared will increase.
# Adjusted R2 will always be less than or equal to R2.

# Call certain elements from list lm_fit









# regression equation: price.pred = -43580.7 + 280.6 * sqft_living

#### Plot the Regression Line (i.e. Y hat) ####









#### Multiple Linear Regression ####

# Use the "lm()" function to create a linear regression





#### Using Pearson's Correlation Test ####

# |-------------------------|--------------|--------------|
# | Strength of association |   Positive   |   Negative   |
# |-------------------------|--------------|--------------|
# | Small                   |  0.1 to 0.3  | -0.1 to -0.3 |
# | Medium                  |  0.3 to 0.5  | -0.3 to -0.5 |
# | Large                   |  0.5 to 1.0  | -0.5 to -1.0 |
# |-------------------------|--------------|--------------|





#### Creating Meta Data Table ####

library(Hmisc)
var.labels = c(id="Unique identifier",
               date="Date the house was sold",
               price="Sale price of the house",
               bedrooms="Number of bedrooms",
               bathrooms="Number of bathrooms",
               sqft_living="Square footage of the home",
               sqft_lot="Square footage of the lot",
               floors="Total floors (levels) in house",
               waterfront="0 = not waterfront, 1 = waterfront",
               view="Number of times the house was viewed",
               condition="Overall condition",
               grade="Overall grade given by King County grading system",
               sqft_above="Square footage (excluding basement)",
               sqft_basement="Square footage of the basement",
               yr_built="Year in which the house was built",
               yr_renovated="Year in which the house was renovated",
               zipcode="Zipcode in which the house is located",
               lat="Latitude coordinate",
               long="Longitude coordinate",
               sqft_living15="Living room area in 2015",
               sqft_lot15="Lot size area in 2015")

# Create a vector with the variable names of data01

Variables <- c(names(housing))
print(Variables)

# Label "data01" by matching column names in data01 to var.labels

label(housing) <- as.list(var.labels[match(Variables, names(var.labels))])

# Create a vector of labels from data01

Labels <- label(housing)
print(Labels)

# Create a vector "Type" using "mode" function in "sapply(data.frame, foo)"
# "sapply()" performs a function on every column in a data.frame
# The output of "sapply()" is a vector (while lapply output is a list)

Type <- sapply(housing, mode)
print(Type)

# Create a data.frame using vectors: "Variables, Type, Labels"

Meta.Data <- data.frame(Variables, Type, Labels)
rownames(Meta.Data) <- NULL
print(Meta.Data)

write.csv(Meta.Data, "Meta Data.csv", row.names=F)

#### Custom Summary Statistics Table ####

Vars <- c(colnames(housing));
Obs <- c(colSums(!is.na(housing)));
Mean <- suppressWarnings(sapply(housing, mean)); Mean[1] <- NA; Mean[2] <- NA;
Mean <- round(Mean, digits = 1)
Std.Dev <- suppressWarnings(apply(housing, 2, sd)); Std.Dev[1] <- NA; Std.Dev[2] <- NA;
Std.Dev <- round(Std.Dev, digits = 1)
Min <- suppressWarnings(apply(housing, 2, min)); Min[1] <- NA;
Max <- suppressWarnings(apply(housing, 2, max)); Max[1] <- NA;

Summary.Statistics <- data.frame(Vars, Obs, Mean, Std.Dev, Min, Max)
rownames(Summary.Statistics) <- NULL
print(Summary.Statistics)

write.csv(Summary.Statistics, "Summary Statistics.csv", row.names=F)

#### Saving & Quitting ####

# Use the function "q()" to close RStudio.



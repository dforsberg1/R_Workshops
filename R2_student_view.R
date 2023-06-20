########################### START ###########################
try(dev.off(), silent = TRUE) # Clear all plots.
rm(list=ls())                 # Clear the Global Environment.
closeAllConnections()         # Clear any existing functions.
cat("\014")                   # Clear the Console.
#-----------------------------------------------------------#

##### SET UP WORK DIRECTORY #####

# Use "setwd()" to set up a work directory for this R session


##### IMPORTING DATA #####

# The format of your data and knowing where to find it will determine
# how you need to import and process your data in R.

# We'll cover importing...

# 1. Pre-loaded data in R
# 2. .csv files
# 3. .xlsx files
# 4. .txt files
# 5. .json files
# 6.  HTML data

##### pre-loaded data #####

# See the data sets already included in R using 'data()'


# Load the "iris" data set using 'data("iris")' and assign to a data frame


# The iris data frame now appears in the  R environment window. 
# The whole data set can now be called as its own object.


#### .csv ####

# A CSV (Comma-Separated Values) file is a plain text file format used to 
# store tabular data. It is a simple and widely supported file format for 
# data exchange between different software applications. CSV files are often 
# used for storing and transferring structured data, such as spreadsheets, 
# databases, and other tabular datasets.

# Importing csv data from file path using the 'read.csv()' function
# and assigning it to a dataframe (e.g., df <- read.csv("file_path"))


# Inspect the dataframe


# Importing csv data from working directory and assigning to a dataframe


# Inspect the dataframe


##### .xlsx #####

# An .xlsx file is a file format used for storing and manipulating structured
# data in a spreadsheet. It is the default file format for Microsoft Excel, a 
# popular spreadsheet program, and is widely supported by other spreadsheet 
# applications as well.

# install.packages("readxl")


# Import the .xlsx file using the 'read_xlsx()' function & assign to a dataframe


# Inspect the imported data set


##### .txt #####

# A .txt file is a plain text file that contains unformatted text. It is 
# a simple and common file format used to store and exchange text-based 
# information. .txt files do not contain any special formatting, styles, 
# or embedded media like images or tables. They consist of plain characters, 
# including letters, numbers, symbols, and whitespace.

# Read a txt file, named "people.txt" using the 'read.table()' function


# Inspect the imported data set


##### .json #####

# A JSON (JavaScript Object Notation) file is a popular data interchange 
# format that is used to store and transmit structured data. It is often 
# used for web-based communication between servers and clients, as well 
# as for data storage and configuration.

# JSON files consist of text-based data organized in a hierarchical and 
# readable format. They are based on key-value pairs and support various 
# data types, including strings, numbers, booleans, arrays, and nested 
# objects. Here's an example of a simple JSON file:

# Highlight the entire section of code below and use 'command+shift+c' on mac 
# or 'control+shift+c' on pc to comment out the entire section:

{
  "name": "John Doe",
  "age": 30,
  "isStudent": false,
  "hobbies": ["reading", "traveling", "photography"],
  "address": {
    "street": "123 Main St",
    "city": "New York",
    "country": "USA"
  }
}

# install.packages('jsonlite')


# Import using 'read_json()' function


##### HTML #####

# install.packages("rvest")


# URL of the Wikipedia page: 
# "https://en.wikipedia.org/wiki/Brazil_national_football_team"


# Open the URL to see what the webpage looks like using 'browseURL()'


# install.packages("XML")
# install.packages("RCurl")



# Use the 'getURL()' function to obtain the url and assign it to 'url' object


# Use the 'readHTMLTable()' function to import tables and assign it to 'tables'


# Obtain table 23 from the list 'tables', i.e., tables[23]
# Assign to object 'brazil_players'


##### NAVIGATING DATAFRAMES #####

# You can inspect a dataframe by double-clicking its name
# in the environment pane of RStudio.  Alternatively, you 
# can use the 'View(dataframe_name)' function:


# Inspect the structure/datatypes and first few samples of the data
# using either the environment pane or the str(...) function


# Basic descriptive statistics can be generated using summary(...)


# View the first few rows of data using head(...)


# Cleaning up categorical variables


# Convert binary variables to 0 and 1




# Here's a sneak peek at what creating a function to automate this task
# might look like in R:
convert_binaries <- function(df) {
  binary_vars <- character()
  
  for (col in colnames(df)) {
    values <- unique(df[[col]])
    values <- values[!is.na(values)]
    
    if (length(values) <= 2 && all(values %in% c("yes", "no"))) {
      binary_vars <- c(binary_vars, col)
    }
  }
  
  convertBinaryVariables <- function(data, variable_names) {
    for (var_name in variable_names) {
      data[[var_name]] <- as.numeric(data[[var_name]] == "yes")
    }
    return(data)
  }
  
  df <- convertBinaryVariables(df, binary_vars)
  return(df)
}

# Re-import the 'males" data set using 'read.csv()' function:


# Use the function created above & and assign its output to itself


# Convert the variable 'ethn' to a factor


# What are the levels of ethnicity?


# To learn more about a function within RStudio, use ?function_name or 'help()'


# View the first few rows of data using the 'head(...)' function


# explicitly set parameter options and override defaults


# Basic descriptive statistics can be generated using summary(...) again


# First, identify column names.  One shortcut is the colnames(...) function.


# One of the most common ways to access a sub-component of an object
# is by using the "$". Example: objectName$attribute


# Subsetting by column name:


# Subsetting by column location:


# Subsetting by column location (alternative):


# Subsetting by rows


# Subsetting by rows and columns


# Subsetting by multiple columns by name:


# Subsetting by multiple columns by location:


# Get the data where the "wage" is greater than 5; select all columns


# Get the data by selecting only "union", "wage", "married" columns


# Get the data where the "wage" is greater than 5; select only 
# "union", "wage", "married" columns


# Get the data where the "majVotes" is less than or equal to 8; select only
# "union", "wage", "married" columns



# Same as above, except "wage" is less than or equal to 8 AND the union 
# is equal to "yes"


# Select the same columns as above, but only select rows where "union" is not null


# Alternative method using na.omit(DATA_OBJECT) to remove any/all observations
# that are not fully complete.
# Example:  na.omit(...)
#           na.omit( data )
#           na.omit( data[ rows , columns ] )
#           na.omit( males[  , c("union","wage","married")])


##               ##
## PRACTICE TIME ##
##               ##
# Subset the data according to the following:
# Rows/Observation - Only include rows where "married" is equivalent to "yes"
# Columns/Variables - Only include the following columns: "school", "married", "wage"


##### INSTALLING AND IMPORTING NEW PACKAGES #####

# In many cases, you will want to rely on additional
# packages that have been developed by members of the R 
# community.  These packages may help with particular 
# forms of analysis, data visualization, or just about 
# anything else you can imagine.

# Once you have identified a package, you can
# Example:  install.packages("package_name_goes_here")
#           install.packages("tidyverse")
#           install.packages("psych")
#           install.packages(c("psych","tidyverse","MASS"))

# Once you have installed a package using R, you will not
# need to run that command again, regardless of which R script
# you are working from.

# install.packages("psych")

# Once installed, you can import a package and all of its 
# components by using the library(...) function and typing 
# the name of the package without quotation marks "".


# Some packages have overlapping function names, so you may need 
# to explicitly call functions from their respective packages.
# Example:  package_name::function_name(...)
#           pscyh::describe(...)


# However, in most cases you can just use the functions directly.


# As with other functions, use the "?" to learn about function 
# parameters, options, and requirements.


##### USING MATH FUNCTIONS #####

# Additionally, some functions that do not work on whole data frames are now
# usable when viewing a single variable.

# Find the min of school


# Find the max of school


# Find the mean of school


# Find the median of school


# Find the quantiles of school using 'quantile()'


# You can specify if you just want to see the 25th and 75th percentiles


# The 'IQR()' function computes the difference: IQR = Q3 - Q1


##               ##
## PRACTICE TIME ##
##               ##

# Generate a few calculations (similar to above), 
# but using the "exper" variable representing the
# years of experience for each individual sample.

# Quick note: The "exper" function contains missing
# values, so we need to add the "na.rm = TRUE" 
# parameter/options in order for the functions to work as expected.

# min


# max


# mean


# median


# quantile
# 

# SAVING AND EXPORTING DATA

# Review the column names again using the 'colnames()' function


# Subset males according to the desired rows / columns
# and assign it to a new object


# Inspect new data subset


# Drop missing values / observation



# Lastly, the write.csv(...) will let you output a dataframe object
# directly to your harddrive.


# For info about this function (or any other function), do not forget
# about the "?" utility.


##### EXPLORING JSON FILES #####

# Since when we look at the structure of a list we see the whole list, I'm 
# going to save that output to a variable and print just a few rows of it.
# You can see the whole structure by just running 'str(movie_ratings)'.



# Obtain a list of all the films in the data set 'movie_ratings'




# What are double brackets? 

# Double brackets (they look like this: [[]]) let you pull out a single item 
# from an object, either by its name or its index. You'll see them most often 
# used with lists, but you can also use them with dataframes instead of the $
# notation. `dataframe[['column']]` is the same things as `dataframe$column`.

# What is the fifth movie in the list?


# Get the information from the fifth movie in the list




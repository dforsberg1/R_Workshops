########################### START ###########################
try(dev.off(), silent = TRUE) # Clear all plots.
rm(list=ls())                 # Clear the Global Environment.
closeAllConnections()         # Clear any existing functions.
cat("\014")                   # Clear the Console.
#-----------------------------------------------------------#

##### SET UP WORK DIRECTORY #####

# Use "setwd()" to set up a work directory for this R session

# Set Work Directory
setwd("/Users/dforsberg1/Desktop/R_series")

##### COMMENTS #####

# Highlight the command below and press "ctrl+enter" (mac: "cmd+enter")

# Turn this command into a comment  # Fix this error

# In the future, you can develop your own programming style
# For this workshop series, please emulate the syntax that I use in my scripts
# When unsure of the correct syntax, reference the following sources:
# browseURL("https://google.github.io/styleguide/Rguide.xml")
# browseURL("https://www.datanovia.com/en/blog/r-coding-style-best-practices/")
# browseURL("https://www.datamentor.io/r-programming/variable-constant/")
# browseURL("https://www.r-bloggers.com/2013/12/rules-for-naming-objects-in-r/")

# Let's begin by looking at 6 variable types...

##### NUMERIC #####

# Working with numbers! R can handle many different types of numbers.

# Try typing an integer: (e.g., 0, 1, -3, 26, 49, ...)
12

# Using the 'typeof()' function in R on the number you typed above:
typeof(12)

# Now try typing a non-repeating decimal number: (e.g., 4.12, -9.79, 0.38, ...)
5.3902

# By default, most numeric data are stored as double precision (64-bit) values
# Try using the base R function 'typeof()' to check data types:
typeof(333)
typeof(5.3902)

##### INTEGERS #####

# To store as integer, R requires the letter L directly following the number:
4L

# Now use the 'typeof()' function in R on the integer you typed above:
typeof(4L)

# The L suffix for integers originated from the S language, which R is based on.
# It was introduced to provide a way to explicitly denote integers and to avoid
# potential ambiguity between integer and floating-point values.

##### COMPLEX #####

# Try complex numbers: (e.g., 3+2i, 4-5i, -1i, ...)
3 - 2i

# Complex numbers are stored as a "complex" data type. Use 'typeof()' to check:
typeof(3 - 2i)

##### SCIENTIFIC NOTATION #####

# Numbers can also be expressed in R using scientific notation.
# Try writing numbers using scientific notation: (e.g., 6.02e23, 1.6E-19, ...)
9.2e5

##### CHECKING NUMBER TYPE #####

# Numbers typically fall into one of three categories:
# integer, numeric, and complex

# Functions 'is.integer()', 'is.numeric()', 'is.complex()' are used to check:
is.integer(12.3)
is.numeric(12.3)
is.complex(12.3)

##### TYPE COERCION #####

# If you want to convert a number from one data type to another, you can use
# the following functions:
as.integer(20)
as.numeric(4L)
as.complex(23)

##### VARIABLE ASSIGNMENT #####

# |--------------|---------------------------|
# |  Operator    |  Description              |
# |--------------|---------------------------|
# |  <-, <<-, =  |  "Leftwards Assignment"   |
# |  ->, ->>     |  "Rightwards Assignment"  |
# |--------------|---------------------------|

# Variable assignment in R is the process of assigning a value or an object to
# a variable name. It allows you to store and manipulate data for later use
# in your code. You can achieve this with assignment operators: <-, <<-, or =
# Note: -> and ->> work as well but are rarely found in R code...
# The left pointing arrow '<-' is the most common syntax.

# Assign a value of 3.14 to a variable named 'pi_round'
pi_round <- 3.14

# Try using the 'print()' function to see the value of 'pi_round':
print(pi_round)

# Assign the value 5 to a variable called 'x':
x <- 5

##### STRINGS/CHARACTERS #####

# Working with strings! In R, strings are used to represent textual data.

# Try writing out your name: (e.g., "Jane Doe" - don't forget the quotes!)
"Jane Doe"

# Try printing out a message: (e.g., "Hello, world!")
print("Hello, world!")

# Now, assign "Hello, world!" to a variable called 'greeting':
greeting <- "Hello, world"

# Use the 'typeof()' function to see the data type of 'greeting':
typeof(greeting)

##### LOGICAL/BOOLEANS #####

# Logical or Boolean variables take on the value TRUE or FALSE

# Create a variable called 'is_raining' with the value FALSE
is_raining <- FALSE

# And create a variable called 'is_sunny' with the value TRUE
is_sunny <- TRUE

# Use the print command to print 'is_raining' and 'is_sunny':
print(is_raining)
print(is_sunny)

##### RAW #####

# In R, the RAW data type is used to represent raw bytes or binary data. 
# A data type that allows you to manipulate binary data at a low level. 

# Assign the binary value of '0x41' to a variable called raw1:
raw1 <- as.raw(0x41)

# The hexadecimal value 0x41 represents a single numeric value. In this case, 
# 0x41 corresponds to the hexadecimal representation of the decimal value 65.
# It can be interpreted as an ASCII code representing the character 'A'.

# Use the 'typeof()' function to check the variable type of raw1:
typeof(raw1)

##### SUMMARY: VARIABLE TYPES IN R #####

# Run the following command to clear the Global Environment:
rm(list=ls())     

# So far, we've discussed six variable types in R:

# integer
# numeric (Generally stored as "double" precision floating-point numbers.)
# complex
# character
# logical
# raw

# Create a variable for each type:
int1 <- 2L
num1 <- -4.3
comp1 <- 2+3i
char1 <- "cat"
logi1 <- TRUE
raw1 <- as.raw(0x41)

# We'll use these variables later...

##### NUMERICAL OPERATORS #####

# Basic arithmetic operations

# Addition: +
3 + 2

# Subtraction: - 
9 - 1

# Multiplication: *
6 * 7

# Division: /
80 / 5

# Exponentiation: ^ or **
2 ^ 6
2 ** 6

# Integer Division: %/%
100 %/% 7

# Modulo (Remainder): %%
100 %% 7

# R automatically uses PEMDAS
2 * 9 + 9

# Parentheses preserve a particular operational order
2 * (9 + 9)

# You can use curly brackets in place of parentheses
{6 / 2} ^ 2

# You can't use square brackets for arithmetic operations
# [3 + 4] - 1

##### LOGICAL OPERATORS #####

# In R, logical operators are used to perform comparisons and logical 
# operations on values or expressions, resulting in logical (Boolean) 
# outcomes of either TRUE or FALSE.

# Here is a list of logical (or comparison / relational) operators 

# |------------|------------------------------|
# |  Operator  |  Description                 |
# |------------|------------------------------|
# |  ==        |  "Equal to"                  |
# |  !=        |  "Not equal to"              |
# |  <         |  "Less than"                 |
# |  >         |  "Greater than"              |
# |  <=        |  "Less than or equal to"     |
# |  >=        |  "Greater than or equal to"  |
# |  &         |  "Logical AND"               |
# |  |         |  "Logical OR"                |
# |  !         |  "Logical NOT"               |
# |------------|------------------------------|

# Logical operators are commonly used in conditional statements, filtering 
# data, and logical evaluations. They help in decision-making and control 
# flow by evaluating conditions and returning logical values based on the 
# comparison or logical operations applied to the operands.

# For example, test whether 5 is greater than 6?
5 > 6

# Now assign x the value of 3 and then test to see if x equals 3
x <- 3
x == 3

##### COMMON MATHEMATICAL FUNCTIONS #####

# Square root function: sqrt()
sqrt(9)

# Absolute value function: abs()
abs(-2)

# Trigonometric functions: sin(), cos(), tan(), etc.
cos(pi)

# Logarithmic functions: log(), log10(), log2()
log(10)

# Exponential function: exp()
exp(2)

# Rounding: round()
round(2.3974)

# Rounding: round()
round(2.3974, digits = 2)

# R is capable of performing more advanced math as well.
# For example, Euler's formula states: e^(xi) = cos(x) + i * sin(x)
# Where i is equal to the square root of negative 1...

# If x = pi (i.e., 3.14159...)
# It follows that e^(πi) is equal to -1
exp((pi * sqrt(as.complex(-1))))

##### MATH FUNCTIONS LIST #####

# Here is a list of some of the built-in numeric functions available in R:

# |-----------------------|---------------------------------------------------|
# | Function              | Description                                       |
# |-----------------------|---------------------------------------------------|
# | sum(x)                | "Add everything within the parenthesis together"  |
# | abs(x)                | "Absolute value"                                  |
# | sqrt(x)               | "Square root"                                     |
# | ceiling(x)            | "Returns integer above"                           |
# | floor(x)              | "Returns integer below"                           |
# | trunc(x)              | "Returns nearest integer between x and 0"         |
# | round(x, digits = n)  | "Rounds x to within n decimal places"             |
# | signif(x, digits = n) | "Rounds x to within n significant decimal places" |
# | log(x)                | "Natural logarithm"                               |
# | log10(x)              | "Common logarithm or log base 10"                 |
# | exp(x)                | "Exponentiation or Euler's number: e^x"           |
# | expm1(x)              | "Computes the value of exp(x) - 1"                |
# | log1p(x)              | "Computes the logarithm of (1 + x)"               |
# |-----------------------|---------------------------------------------------|

##### TRIGONOMETRIC FUNCTIONS LIST #####

# |-----------------------|---------------------------------------------------|
# | Function              | Description                                       |
# |-----------------------|---------------------------------------------------|
# | cos(x),               | "Cosine"                                          |
# | acos(x)               | "Arccosine"                                       |
# | cosh(x)               | "Hyperbolic cosine"                               |
# | acosh(x)              | "Hyperbolic arccosine"                            |
# | sin(x)                | "Sine"                                            |
# | asin(x)               | "Arcsine"                                         |
# | sinh(x)               | "Hyperbolic sine"                                 |
# | asinh(x)              | "Hyperbolic arcsine"                              |
# | tan(x)                | "Tangent"                                         |
# | atan(x)               | "Arctangent"                                      |
# | tanh(x)               | "Hyperbolic tangent"                              |
# | atanh(x)              | "Hyperbolic arctangent"                           |
# |-----------------------|---------------------------------------------------|

##### STATISTICAL FUNCTIONS LIST #####

# |-----------------------|---------------------------------------------------|
# | Function              | Description                                       |
# |-----------------------|---------------------------------------------------|
# | min(x)                | "Minimum value"                                   |    
# | max(x)                | "Maximum value"                                   |
# | mean(x)               | "Arithmetic mean"                                 |
# | median(x)             | "Median value"                                    |
# | range(x)              | "Returns Range (i.e., min and max)"               |
# | var(x)                | "Sample variance"                                 |
# | sd(x)                 | "Standard deviation"                              |
# | gamma(x)              | "Computes the gamma function value of x"          |
# | choose(n, k)          | "Number of combinations (binomial coefficients)"  |
# | factorial(x)          | "Factorial of x"                                  |
# |-----------------------|---------------------------------------------------|

##### BUILT-IN CONSTANTS #####

# R contains several built-in constants
# Run the command lines below and read the output

print(LETTERS)    # All 26 upper-case letters of the english alphabet
print(letters)    # All 26 lower-case letters of the english alphabet
print(pi)         # An approximation of pi out to six decimal places
print(month.name)  # The full names of all 12 Gregorian calendar months
print(month.abb)   # The abbreviated names of all 12 Gregorian calendar months

# PRO TIP: Don't rely on built-in constants as you can change their values

# Assign the value "120" to "pi" and print to the output window

pi <- 120
print(pi)

# Now pi has a value of 120 because we told R that pi equals 120
# Remember, R only "knows" what you tell it

##### NAMESPACE OPERATOR #####

# Use the following command if you want to restore the built-in value of pi
pi <- base::pi
print(pi)

# In R, the :: operator is called the "double colon" or "namespace" operator. 
# Use it to access functions, objects, or constants from a specific package
# or namespace. We'll cover packages in more detail later...

# The :: operator allows you to directly reference an object or function
# without having to load the entire package using the library() function.
# It is particularly useful when you want to access specific functions or
# objects from a package without attaching the entire package namespace.

##### INTRODUCING OBJECTS #####

# Objects form the foundation of object-oriented programming and scripting, 
# serving as containers for storing and representing various entities. They 
# enable the storage of individual values, collections of values such as sets 
# or lists, as well as more intricate data structures.

# There are 8 main objects in R:

# 1. Vectors: 
# Vectors are one-dimensional arrays that can hold element(s) of the 
# same data type, such as numbers, characters, or logical values.

# 2. Matrices: 
# Matrices are two-dimensional arrays with rows and columns. All 
# elements in a matrix must have the same data type.

# 3. Arrays: 
# Arrays are similar to matrices but can have more than two dimensions. 
# They can store elements of the same data type.

# 4. Lists: 
# Lists are versatile objects that can contain elements of different data types.
# Each element of a list can be a vector, matrix, array, or another list.

# 5. Data Frames: 
# Data frames are tabular structures that store data in rows and columns. 
# They are similar to tables in a relational database. Each column of 
# a data frame can have a different data type.

# 6. Factors: 
# Factors are used to represent categorical variables in R. They are 
# created from vectors and store a set of discrete values or levels.

# 7. Functions: 
# Functions are objects that encapsulate a set of instructions to perform
# a specific task. They can be defined by the user or built-in to R.

# 8. S3, S4, and Reference Classes: 
# These are object-oriented programming (OOP) systems in R. They provide a 
# way to define and work with objects that have specific behaviors and methods.

##### COMBINE FUNCTION #####

# Up to this point, we've created variables and assigned them a single value,
# sometimes referred to as a data element (e.g., x <- 7, y = "yellow").

# For example:
x <- 42

# Technically speaking, objects like 'x' are actually 'vectors' of length 1.

# Recall, vectors are arrays that can also contain multiple elements.
# And sometimes, 'vectors' are referred to as 'atomic vectors'.

# If we want to create a vector with multiple elements, we have to use the 
# combine function, 'c()' here's an example:
x <- c(42, 56, 78)

##### VECTORS #####

# Vectors can differ both in terms of length (the contained number of elements)
# and also type (e.g., numeric, character, Boolean, etc.)

# To create a vector with multiple elements, use the 'c()' function.
# Create a vector called 'fruits' containing "apples", "oranges", and "bananas"
fruits <- c("apples", "oranges", "bananas")

# Now print the output using the 'print()' function:
print(fruits)

# Use the 'length()' function to obtain the number of elements in 'fruits'
length(fruits)

# Use the 'typeof()' function to see what kind of vector 'fruits' is
typeof(fruits)

# Use the 'is.vector()' function to see if the object is a vector
is.vector(fruits)

# Now create two numeric vectors called 'x' and 'y', each containing 3 numbers
x <- c(1, 2, 3)
y <- c(4, -3, 1 )

# Vector addition:
x + y

# Vector subtraction:
x - y

# Vector multiplication:
x * y

# Vector division:
x / y

# Vector dot product:
x %*% y

# The dot product is equivalent to:
1*4 + 2*(-3) + 3*1

# You can also perform logical operations on numerical vectors:
x >= y

##### MATRICES #####

# Matrices in R are two-dimensional data structures consisting of rows and columns.
# All elements within a matrix must have the same data type.

# To create a matrix, you can use the 'matrix()' function.
# Create a 2x3 matrix called 'myMatrix' with the elements 1, 2, 3, 4, 5, 6
myMatrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

# Print the matrix using the 'print()' function:
print(myMatrix)

# Use the 'dim()' function to obtain the dimensions of the matrix
dim(myMatrix)

# Notice that 'dim()' reports the rows then the columns

# Use the 'typeof()' function to see what data type the matrix contains
typeof(myMatrix)

# Use the 'is.matrix()' function to check if the object is a matrix
is.matrix(myMatrix)

# You can perform operations on matrices similar to vectors:

# Matrix addition:
myMatrix + myMatrix

# Matrix subtraction:
myMatrix - myMatrix

# Matrix multiplication (element-wise):
myMatrix * myMatrix

# Matrix division (element-wise):
myMatrix / myMatrix

# Matrix transpose:
t(myMatrix)

# Matrix multiplication (matrix product):
myMatrix %*% t(myMatrix)

# The matrix product is equivalent to:
# (1*1)+(3*3)+(5*5)     (1*2)+(3*4)+(5*6)
# (2*1)+(4*3)+(6*5)     (2*2)+(4*4)+(6*6)

# You can also access specific elements of a matrix using indexing:
# Access the element in the first row and second column:
myMatrix[1, 2]

# Access the entire second column:
myMatrix[, 2]

# Access the entire first row:
myMatrix[1, ]

# Note: The examples above assume a numeric matrix, but matrices can contain
# other data types as well, such as characters or logical values.

##### ARRAYS #####

# In R, arrays are multi-dimensional structures that can store data of 
# the same type. An array can have any number of dimensions, allowing 
# you to work with data in more than two dimensions.

# To create an array, you can use the array() function. The function takes the 
# data, dimensions, and optionally, labels for each dimension as arguments.

# Create a 3-dimensional array called 'myArray' with dimensions 2x3x4
myArray <- array(data = 1:24, dim = c(2, 3, 4))

# The array has 2 rows, 3 columns, and 4 layers.

# Print the array
print(myArray)

# Use 'dim()' to find the dimensions of the array
dim(myArray)

# Accessing elements in an array is similar to matrices
# Access the element at position (1, 2, 3)
element <- myArray[1, 2, 3]
print(element)

# You can also assign labels to each dimension of the array using
# the 'dimnames' argument

# Create an array with dimension names
myArray <- array(data = 1:24, dim = c(2, 3, 4), 
                 dimnames = list(c("A", "B"), 
                                 c("X", "Y", "Z"), 
                                 c("I", "II", "III", "IV")))

# Print the array with dimension names
print(myArray)

# Accessing elements with dimension names
element <- myArray["A", "Y", "III"]
print(element)

# Arrays in R can be very useful when working with multi-dimensional data,
# such as image data, scientific simulations, or any data that has multiple
# dimensions beyond the traditional rows and columns.

##### LISTS #####

# Suppose now that we want to store all of the variables we created above into 
# a single object. In R, we can create a list using the 'list()' function.
# A list can be created like this: list_name <- list(obj_1, obj_2, ..., obj_N)

# Try creating a list called 'my_list' and then print the output
my_list <- list(int1, num1, comp1, char1, logi1, raw1)
print(my_list)

# Now, let's use the 'typeof()' function to see what kind of element my_list is:
typeof(my_list)

# We can also use the 'class()" function as well:
class(my_list)

# We can use the function 'lapply()" and 'class() to see the element type for 
# every object stored in a list via 'lapply(list_name, function)'

# Get the class of each element in the list
lapply(my_list, class)

##### LISTS #####

# Unlike vectors or matrices, lists can contain elements of different lengths 
# and dimensions. Lists are created using the "list()" function or by combining 
# objects using the "c()" function. Each element in a list is assigned a name, 
# which allows for easy access and retrieval of specific elements. Elements 
# within a list can be accessed using indexing or by referring to their names.

# Recall that we created the following variables:

# Create a variable for each type:
int1 <- 2L
num1 <- -4.3
comp1 <- 2+3i
char1 <- "cat"
logi1 <- TRUE
raw1 <- as.raw(0x41)

# Let's put all of them into a list:

list1 <- list(int1 = int1, 
              num1 = num1, 
              comp1 = comp1, 
              char1 = char1, 
              logi1 = logi1, 
              raw1 = raw1)

# Print 'list1' contents
print(list1)

# Use 'typeof()' function to see that list1 is a list
typeof(list1)

# If we want to identify the variable type of each variable
# in our list, we can iterate through the list with the
# 'lapply()' function:
lapply(list1, typeof)

# Suppose we want to add another object to the list
# Create a numeric vector and add it using the 'c()' function

# New numeric vector
numeric_vec <- c(1.5, 2.7, -3.2)

# Adding the numeric vector as a new element in the list
list1$new_element <- numeric_vec

# Print 'list1' contents
print(list1)

# Now suppose we want to remove 'comp1' and 'raw1' from the list
# We can do this by subtracting the objects within an index

# Remove objects from the list
list1 <- list1[setdiff(names(list1), c("comp1", "raw1"))]

# Print 'list1' contents
print(list1)

##### DATA FRAMES #####

# In R, a data frame is a two-dimensional tabular data structure that organizes 
# data into rows and columns, similar to a spreadsheet or a database table. It 
# is a fundamental data structure used for data analysis and manipulation in R.

# Data frames can contain different types of data, including numeric values, 
# characters, factors, and logical values. Each column in a data frame 
# represents a variable, while each row represents an observation or a case. 
# The columns of a data frame can have different lengths, allowing for 
# flexibility in storing and working with heterogeneous data.

# Data frames are commonly created by importing external data sources such as
# CSV files or databases. They can also be constructed manually using functions 
# like data.frame() or by converting other data structures like matrices or 
# lists using functions like as.data.frame().

# Creating a data frame
df <- data.frame(
  Name = c("John", "Jane", "Mike", "Emily"),
  Age = c(25, 30, 28, 35),
  Country = c("USA", "Canada", "UK", "Australia"),
  stringsAsFactors = FALSE
)

# Displaying the data frame
print(df)

# Accessing specific columns
print(df$Name)
print(df[, "Age"])

# Accessing specific rows
print(df[2, ])
print(df[c(3, 4), ])

# Adding a new column
df$Salary <- c(50000, 60000, 55000, 70000)
print(df)

# Subsetting the data frame
subset_df <- subset(df, Age > 28)
print(subset_df)

##### FACTORS #####

# In R, factors are used to represent categorical or discrete data. 
# They are a special data type designed to handle qualitative variables 
# such as levels, categories, or groups. Factors are useful for encoding 
# and analyzing data with a fixed set of distinct values, known as levels. 
# They help in efficiently managing and analyzing categorical data, including 
# handling missing or undefined values.

# Creating a vector
gender <- c("Male", "Female", "Male", "Male", "Female", "Female")

# Converting the vector to a factor
gender_factor <- factor(gender)

# Displaying the factor
print(gender_factor)

# Printing the levels of the factor
print(levels(gender_factor))

# Assigning custom levels to the factor
levels(gender_factor) <- c("F", "M")

# Displaying the updated factor
print(gender_factor)

# Creating a factor with ordered levels
rating <- c("Good", "Excellent", "Poor", "Fair")
rating_factor <- factor(rating, ordered = TRUE, 
                        levels = c("Poor", "Fair", "Good", "Excellent"))

# Displaying the ordered factor
print(rating_factor)

# Converting a categorical variable in a data frame to a factor:
df$Country <- as.factor(df$Country)

# What are the levels of the variable 'Country'?
levels(df$Country)

##### FUNCTIONS #####

# In R, functions are blocks of reusable code that perform specific tasks. 
# They allow you to encapsulate a sequence of operations into a single 
# entity, making your code more modular, readable, and organized. Functions 
# take input parameters, perform computations, and return output values. They 
# enable code reusability, help with code maintenance, and promote good 
# programming practices. You can create a function using 'function()'

# Function to calculate the sum of two numbers
sum_numbers <- function(a, b) {
  sum <- a + b
  return(sum)
}

# In the function, 'a' and 'b' are arguments.
# The action performed by the function is contained within the curly brackets
# the 'return()' statement tells R what the output should be

# Calling the function with arguments
result <- sum_numbers(5, 7)

# Printing the result
print(result)

##### S3, S4, & REFERENCE CLASSES #####

# In R, S3, S4, and Reference Classes are three different object-oriented 
# programming systems that allow for the creation and manipulation of complex 
# data structures and classes.

# S3: 

# S3 is the simplest and most widely used object-oriented system in R. It 
# provides a flexible and informal way of defining and using classes. S3 
# classes are primarily defined by their behavior, as methods are associated 
# with generic functions. S3 classes are dynamic and allow objects to be 
# easily modified and extended.

# Create a basic S3 class
person <- list(name = "John", age = 30)
class(person) <- "person"

# Define a generic function for the S3 class
print.person <- function(x) {
  NextMethod("print")
}

# Define a method for the S3 class
print.person.default <- function(x) {
  cat("Name:", x$name, "\n")
  cat("Age:", x$age, "\n")
}

# Call the method for the S3 object
print(person)

# S4: 

# S4 is a more formal and structured object-oriented system in R. It provides 
# a more rigid class definition syntax, including explicit class slots and 
# methods. S4 classes are typically used when more control and structure are 
# needed in defining complex classes and their behavior. S4 classes support 
# multiple inheritance and enforce stricter type checking.

# Define an S4 class
setClass("Rectangle", representation(length = "numeric", width = "numeric"))

# Define a method for the S4 class
setGeneric("area", function(object) standardGeneric("area"))
setMethod("area", "Rectangle", function(object) {
  return(object@length * object@width)
})

# Create an S4 object
rect <- new("Rectangle", length = 5, width = 3)

# Call the method for the S4 object
print(area(rect))

# Reference Classes: 

# Reference Classes, introduced in R's "methods" package, provide a more 
# elaborate and powerful object-oriented programming paradigm. Reference 
# Classes allow for mutable objects with shared state and methods. They provide 
# a way to create objects that behave more like traditional objects in other 
# programming languages, with instance-level fields and methods.

# Define a Reference Class
Person <- setRefClass("Person",
                      fields = list(name = "character", age = "numeric"),
                      methods = list(
                        print = function() {
                          cat("Name:", name, "\n")
                          cat("Age:", age, "\n")
                        }
                      )
)

# Create a Reference Class object
person <- Person$new(name = "Jane", age = 25)

# Call the method for the Reference Class object
person$print()





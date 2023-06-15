########################### START ###########################
try(dev.off(), silent = TRUE) # Clear all plots.
rm(list=ls())                 # Clear the Global Environment.
closeAllConnections()         # Clear any existing functions.
cat("\014")                   # Clear the Console.
#-----------------------------------------------------------#

##### SET UP WORK DIRECTORY #####

# Use "setwd()" to set up a work directory for this R session

# Set Work Directory


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


# Using the 'typeof()' function in R on the number you typed above:


# Now try typing a non-repeating decimal number: (e.g., 4.12, -9.79, 0.38, ...)


# By default, most numeric data are stored as double precision (64-bit) values
# Try using the base R function 'typeof()' to check data types:



##### INTEGERS #####

# To store as integer, R requires the letter L directly following the number:


# Now use the 'typeof()' function in R on the integer you typed above:


# The L suffix for integers originated from the S language, which R is based on.
# It was introduced to provide a way to explicitly denote integers and to avoid
# potential ambiguity between integer and floating-point values.

##### COMPLEX #####

# Try complex numbers: (e.g., 3+2i, 4-5i, -1i, ...)


# Complex numbers are stored as a "complex" data type. Use 'typeof()' to check:


##### SCIENTIFIC NOTATION #####

# Numbers can also be expressed in R using scientific notation.
# Try writing numbers using scientific notation: (e.g., 6.02e23, 1.6E-19, ...)


##### CHECKING NUMBER TYPE #####

# Numbers typically fall into one of three categories:
# integer, numeric, and complex

# Functions 'is.integer()', 'is.numeric()', 'is.complex()' are used to check:




##### TYPE COERCION #####

# If you want to convert a number from one data type to another, you can use
# the following functions:




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


# Try using the 'print()' function to see the value of 'pi_round':


# Assign the value 5 to a variable called 'x':


##### STRINGS/CHARACTERS #####

# Working with strings! In R, strings are used to represent textual data.

# Try writing out your name: (e.g., "Jane Doe" - don't forget the quotes!)


# Try printing out a message: (e.g., "Hello, world!")


# Now, assign "Hello, world!" to a variable called 'greeting':


# Use the 'typeof()' function to see the data type of 'greeting':


##### LOGICAL/BOOLEANS #####

# Logical or Boolean variables take on the value TRUE or FALSE

# Create a variable called 'is_raining' with the value FALSE


# And create a variable called 'is_sunny' with the value TRUE


# Use the print command to print 'is_raining' and 'is_sunny':



##### RAW #####

# In R, the RAW data type is used to represent raw bytes or binary data. 
# A data type that allows you to manipulate binary data at a low level. 

# Assign the binary value of '0x41' to a variable called raw1:


# The hexadecimal value 0x41 represents a single numeric value. In this case, 
# 0x41 corresponds to the hexadecimal representation of the decimal value 65.
# It can be interpreted as an ASCII code representing the character 'A'.

# Use the 'typeof()' function to check the variable type of raw1:


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







# We'll use these variables later...

##### NUMERICAL OPERATORS #####

# Basic arithmetic operations

# Addition: +


# Subtraction: - 


# Multiplication: *


# Division: /


# Exponentiation: ^ or **



# Integer Division: %/%


# Modulo (Remainder): %%


# R automatically uses PEMDAS


# Parentheses preserve a particular operational order


# You can use curly brackets in place of parentheses


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


# Now assign x the value of 3 and then test to see if x equals 3



##### COMMON MATHEMATICAL FUNCTIONS #####

# Square root function: sqrt()


# Absolute value function: abs()


# Trigonometric functions: sin(), cos(), tan(), etc.


# Logarithmic functions: log(), log10(), log2()


# Exponential function: exp()


# Rounding: round()


# Rounding: round()


# R is capable of performing more advanced math as well.
# For example, Euler's formula states: e^(xi) = cos(x) + i * sin(x)
# Where i is equal to the square root of negative 1...

# If x = pi (i.e., 3.14159...)
# It follows that e^(πi) is equal to -1


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




# Now pi has a value of 120 because we told R that pi equals 120
# Remember, R only "knows" what you tell it

##### NAMESPACE OPERATOR #####

# Use the following command if you want to restore the built-in value of pi



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


# Technically speaking, objects like 'x' are actually 'vectors' of length 1.

# Recall, vectors are arrays that can also contain multiple elements.
# And sometimes, 'vectors' are referred to as 'atomic vectors'.

# If we want to create a vector with multiple elements, we have to use the 
# combine function, 'c()' here's an example:


##### VECTORS #####

# Vectors can differ both in terms of length (the contained number of elements)
# and also type (e.g., numeric, character, Boolean, etc.)

# To create a vector with multiple elements, use the 'c()' function.
# Create a vector called 'fruits' containing "apples", "oranges", and "bananas"


# Now print the output using the 'print()' function:


# Use the 'length()' function to obtain the number of elements in 'fruits'


# Use the 'typeof()' function to see what kind of vector 'fruits' is


# Use the 'is.vector()' function to see if the object is a vector


# Now create two numeric vectors called 'x' and 'y', each containing 3 numbers



# Vector addition:


# Vector subtraction:


# Vector multiplication:


# Vector division:


# Vector dot product:


# The dot product is equivalent to:


# You can also perform logical operations on numerical vectors:


##### MATRICES #####

# Matrices in R are two-dimensional data structures consisting of rows and columns.
# All elements within a matrix must have the same data type.

# To create a matrix, you can use the 'matrix()' function.
# Create a 2x3 matrix called 'myMatrix' with the elements 1, 2, 3, 4, 5, 6


# Print the matrix using the 'print()' function:


# Use the 'dim()' function to obtain the dimensions of the matrix


# Notice that 'dim()' reports the rows then the columns

# Use the 'typeof()' function to see what data type the matrix contains


# Use the 'is.matrix()' function to check if the object is a matrix


# You can perform operations on matrices similar to vectors:

# Matrix addition:


# Matrix subtraction:


# Matrix multiplication (element-wise):


# Matrix division (element-wise):


# Matrix transpose:


# Matrix multiplication (matrix product):


# The matrix product is equivalent to:
# (1*1)+(3*3)+(5*5)     (1*2)+(3*4)+(5*6)
# (2*1)+(4*3)+(6*5)     (2*2)+(4*4)+(6*6)

# You can also access specific elements of a matrix using indexing:
# Access the element in the first row and second column:


# Access the entire second column:


# Access the entire first row:


# Note: The examples above assume a numeric matrix, but matrices can contain
# other data types as well, such as characters or logical values.

##### ARRAYS #####

# In R, arrays are multi-dimensional structures that can store data of 
# the same type. An array can have any number of dimensions, allowing 
# you to work with data in more than two dimensions.

# To create an array, you can use the array() function. The function takes the 
# data, dimensions, and optionally, labels for each dimension as arguments.

# Create a 3-dimensional array called 'myArray' with dimensions 2x3x4


# The array has 2 rows, 3 columns, and 4 layers.

# Print the array


# Use 'dim()' to find the dimensions of the array


# Accessing elements in an array is similar to matrices
# Access the element at position (1, 2, 3)



# You can also assign labels to each dimension of the array using
# the 'dimnames' argument

# Create an array with dimension names





# Print the array with dimension names


# Accessing elements with dimension names



# Arrays in R can be very useful when working with multi-dimensional data,
# such as image data, scientific simulations, or any data that has multiple
# dimensions beyond the traditional rows and columns.

##### LISTS #####

# Suppose now that we want to store all of the variables we created above into 
# a single object. In R, we can create a list using the 'list()' function.
# A list can be created like this: list_name <- list(obj_1, obj_2, ..., obj_N)

# Try creating a list called 'my_list' and then print the output



# Now, let's use the 'typeof()' function to see what kind of element my_list is:


# We can also use the 'class()" function as well:


# We can use the function 'lapply()" and 'class() to see the element type for 
# every object stored in a list via 'lapply(list_name, function)'

# Get the class of each element in the list


##### LISTS #####

# Unlike vectors or matrices, lists can contain elements of different lengths 
# and dimensions. Lists are created using the "list()" function or by combining 
# objects using the "c()" function. Each element in a list is assigned a name, 
# which allows for easy access and retrieval of specific elements. Elements 
# within a list can be accessed using indexing or by referring to their names.

# Recall that we created the following variables:

# Create a variable for each type:







# Let's put all of them into a list:








# Print 'list1' contents


# Use 'typeof()' function to see that list1 is a list


# If we want to identify the variable type of each variable
# in our list, we can iterate through the list with the
# 'lapply()' function:


# Suppose we want to add another object to the list
# Create a numeric vector and add it using the 'c()' function

# New numeric vector


# Adding the numeric vector as a new element in the list


# Print 'list1' contents


# Now suppose we want to remove 'comp1' and 'raw1' from the list
# We can do this by subtracting the objects within an index

# Remove objects from the list


# Print 'list1' contents


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







# Displaying the data frame


# Accessing specific columns



# Accessing specific rows



# Adding a new column



# Subsetting the data frame



##### FACTORS #####

# In R, factors are used to represent categorical or discrete data. 
# They are a special data type designed to handle qualitative variables 
# such as levels, categories, or groups. Factors are useful for encoding 
# and analyzing data with a fixed set of distinct values, known as levels. 
# They help in efficiently managing and analyzing categorical data, including 
# handling missing or undefined values.

# Creating a vector


# Converting the vector to a factor


# Displaying the factor


# Printing the levels of the factor


# Assigning custom levels to the factor


# Displaying the updated factor


# Creating a factor with ordered levels




# Displaying the ordered factor


# Converting a categorical variable in a data frame to a factor:


# What are the levels of the variable 'Country'?


##### FUNCTIONS #####

# In R, functions are blocks of reusable code that perform specific tasks. 
# They allow you to encapsulate a sequence of operations into a single 
# entity, making your code more modular, readable, and organized. Functions 
# take input parameters, perform computations, and return output values. They 
# enable code reusability, help with code maintenance, and promote good 
# programming practices. You can create a function using 'function()'

# Function to calculate the sum of two numbers





# In the function, 'a' and 'b' are arguments.
# The action performed by the function is contained within the curly brackets
# the 'return()' statement tells R what the output should be

# Calling the function with arguments


# Printing the result


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





#' --------------
#' Essentials of the R Language
#' 
#' ------------
#' Calculations
#' 
#' - The screen prompt > is an invitation to put R to work. 
#' 
#' demo(plotmath)
#' 
#' log(42/7.3)
#' 
#' 5+6+3+6+4+2+4+8
#' 
#' 2+3; 5*7; 3-7
#' 
#' ---------------
#' Complex numbers
#' z <- 3.5-8i
#' 
#' Determine the real part:
#' Re(z)
#' 
#' Determine the imaginary part:
#' Im(z)
#' 
#' Calculate the modulus
#' (the distance from z to 0 in the complex plane by Pythagoras)
#' sqrt(x^2 + y^2)
#' 
#' Mod(z)
#' 
#' is.complex(z)
#' 
#' as.complex(3.8)
#' 
#' 
#' Rounding
#' 
#' The ‘greatest integer less than’ function is floor
#' floor(5.7)
#' 
#' The ‘next integer’ function is ceiling
#' ceiling(5.7)
#' 
#' rounded, then define it as a function like this: 
#' rounded <- function(x) floor(x+0.5)
#' 
#' rounded(5.7)
#' 
#' rounded(5.4)
#' 
#' 
#' Arithmetic
#' 
#' 7+3-5*2
#' Notice from this example that multiplication 
#' (5 × 2) is done before the additions 
#' and subtractions. 
#' 
#' 
#' ###################
#' Variable names and assignment
#' 
#'  Variable names in R are casesensitive, 
#'   so y is not the same as Y.
#'  Variable names should not begin with 
#'   numbers(e.g.1x) or symbols(e.g.%x).
#'  Variable names should not contain blank 
#'   spaces (use back.pay not back pay).
#'   
#'   Objects obtain values in R by assignment 
#'   (‘x gets a value’). This is achieved by 
#'   the gets arrow <- which is a composite 
#'   symbol made up from ‘less than’ and ‘minus’ 
#'   with no space between them. Thus, to 
#'   create a scalar constant x 
#'   with value 5 we type:
#'   
#'   x <- 5
#'  
#'  ---------------- 
#'  Integers
#'  
#'  Integer vectors exist so that data can be passed to 
#'  C or Fortran code which expects them, and so that 
#'  small integer data can be represented exactly 
#'  and compactly.
#'  
#'  Be careful. Do not try to change the class of a 
#'  vector by using the integer function. Here is 
#'  a numeric vector of whole numbers that you 
#'  want to convert into a vector of integers:
#'  x <- c(5,3,7,8) 
#'  
#'  is.integer(x)
#'  
#'  is.numeric(x)
#'  
#'  Applying the integer function to it replaces all 
#'  your numbers with zeros; definitely not what you intended. 
#'  
#'  x <- integer(x)
#'  x
#'  
#'  Make the numeric object first, then convert the object to 
#'  integer using the as.integer function like this:
#'  
#'  x <- c(5,3,7,8)
#'  x <- as.integer(x)
#'  is.integer(x)
#'  
#'  (onion)
#'  
#'  -----------
#'  Factors
#'  
#'  Factors are categorical variables that have a fixed number of levels. 
#'  gender <- factor(c("female", "male", "female", "male", "female"))
#'  
#'  class(gender)
#'  mode(gender)
#'  
#' -------- * --------
#' Logical operations
#' 
#' A crucial part of computing involves asking 
#' questions about things. Is one thing bigger 
#' than other? Are two things the same size? 
#' 
#' Questions can be joined together using 
#' words like ‘and’ ‘or’, ‘not’. 
#' 
#' Questions in R typically evaluate to 
#' TRUE or FALSE but there is the option 
#' of a ‘maybe’ (when the answer is not available, NA). 
#' 
#' In R, < means ‘less than’, 
#' > means ‘greater than’, 
#' and ! means ‘not’
#' 
#' TRUE and T with FALSE and F
#' 
#' TRUE == FALSE
#' T == F
#' 
#' T is not equal to F
#' T != F
#' 
#' Summarizing differences between objects using all.equal
#' 
#' a <- c("cat","dog","goldfish")
#' b <- factor(a)
#' 
#' all.equal(a,b)
#' 
#' class(b)
#' mode(b)
#' 
#' attributes(b)
#' 
#' n1 <- c(1,2,3)
#' n2 <- c(1,2,3,4)
#' all.equal(n1,n2)
#' 
#' 
#' n2 <- as.character(n2)
#' all.equal(n1,n2)
#' 
#' 
#' Logical arithmetic
#' 
#' x <- 0:6
#' x < 4
#' 
#' all(x>0)
#' 
#' any(x<0)
#' 
#' sum(x<4)
#' 
#' -------------*
#' Sequences
#'
#' 0:10
#' 
#' 15:5
#' 
#' seq(from=0.04,by=0.01,length=11)
#' 
#' 
#' Generating repeats
#' 
#' rep(9,5)
#' 
#' rep(1:4, 2)
#' 
#' rep(1:4, each = 2)
#' 
#' rep(1:4, each = 2, times = 3)
#' 
#'  
#' Testing and coercion
#' 
#' 
#' Missing values and things that are not numbers
#' 
#' 
#' Vectors and subscripts
#' 
#' 
#' Vectorized functions
#' 
#' 
#' Matrices and arrays
#' 
#' 
#' 
#' Sampling
#' 
#' 
#' Loops and repeats
#' 
#' 
#' Lists
#' 
#' 
#' Text, character strings and pattern matching
#' 
#' 
#' Dates and times
#' 
#' 
#' Environments
#'  
#' 
#' Writing R functions
#' 
#' 
#' 
#' Writing to file from R 
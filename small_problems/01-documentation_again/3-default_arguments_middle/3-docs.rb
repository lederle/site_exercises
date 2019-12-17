# Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Use the ruby documentation to determine what this code will print.
#
# Syntax => Calling Methods => Default Positional Arguments
# 
# Ruby allows default values to appear in the middle of positional 
# arguments.
# 
# a <- 4
# d <- 6
# b <- 5; the arg 5 must be assigned, start with b
# c <- default value 3

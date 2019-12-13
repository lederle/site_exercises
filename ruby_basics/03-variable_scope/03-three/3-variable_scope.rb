# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

# Prints 7.  The a that is assigned to inside my_value is local to the function, it does not affect the outer a.
#

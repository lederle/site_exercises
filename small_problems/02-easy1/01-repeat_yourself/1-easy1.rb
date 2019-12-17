# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(string, reps)
  reps.times { puts string }
end

# Example:

repeat('Hello', 3)
repeat('Helloz', 9)

# Output:

# Hello
# Hello
# Hello


# In the previous exercise, you learned that the while loop returns nil unless break is used. Locate the documentation for break, and determine what value break sets the return value to for the while loop.


# break Statement

# Use break to leave a block early. This will stop iterating over the items in values if one of them is even:
values = (0..10)
values.each do |value|
  break if value.even?

  # ...
end

# You can also terminate from a while loop using break:

a = 0

while true do
  p a
  a += 1

  break if a < 10
end

p a

# This prints the numbers 0 and 1.

# break accepts a value that supplies the result of the expression it is “breaking” out of:

result = [1, 2, 3].each do |value|
  break value * 2 if value.even?
end

p result # prints 4


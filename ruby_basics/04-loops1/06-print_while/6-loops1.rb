# Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

numbers = [rand(100), rand(100), rand(100), rand(100), rand(100)]
count = 0
while count != 5
  puts numbers[count]
  count += 1
end
# while <condition>
  # ...
# end

# Example output (your numbers will most likely be different):

# 62
# 96
# 31
# 16
# 36

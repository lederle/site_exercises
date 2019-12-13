# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# a is assigned to each element of the array, the last value is 3. Note that the variables a & array are available inside the block.

# What will the following code print, and why? Don't run the code until you have tried to answer.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# a is local to the block, it is not available outside it. So line 9 throws a NameError.

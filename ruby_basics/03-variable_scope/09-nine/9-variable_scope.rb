# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# a is local to block and also the outer scope.  They are different. The puts a on line 10 prints the 7 that is available to the outer scope.

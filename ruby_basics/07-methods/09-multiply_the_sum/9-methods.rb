# Write the following methods so that each output is true.

def add(x1, x2)
  x1 + x2
end

def multiply(x1, x2)
  x1 * x2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

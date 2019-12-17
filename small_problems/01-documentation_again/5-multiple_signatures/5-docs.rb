# What do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7)
# Throws IndexError; 7 outside of array bounds
puts a.fetch(7, 'beats me')
# 'beats me'; this is the default value for idex out of bounds
puts a.fetch(7) { |index| index**2 }
# 49; if index out of bounds, block is executed

# Array#fetch
# Tries to return the element at position index, but throws an 
# IndexError exception if the referenced index lies outside of 
# the array bounds. This error can be prevented by supplying a 
# second argument, which will act as a default value.

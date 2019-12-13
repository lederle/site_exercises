# Assume you have this Array:

a = %w(a b c d e)

# How would you use Array#insert to insert the numbers 5, 6, and 7 between the elements with values 'c' and 'd'?

p a.insert(3, 5, 6, 7)


#  insert(index, obj...) → ary

# Inserts the given values before the element with the given index.

# Negative indices count backwards from the end of the array, where -1 is the last element. If a negative index is used, the given values will be inserted after that element, so using an index of -1 will insert the values at the end of the array.

a = %w{ a b c d }
a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]
a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]



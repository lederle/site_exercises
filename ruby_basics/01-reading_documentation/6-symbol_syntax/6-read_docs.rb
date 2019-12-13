# Symbols

# A Symbol represents a name inside the ruby interpreter. See Symbol for more details on what symbols are and when ruby creates them internally.

# You may reference a symbol using a colon: :my_symbol.

# You may also create symbols by interpolation:

p :"my_symbol1"
p :"my_symbol#{1 + 1}"

# Like strings, a single-quote may be used to disable interpolation:

p :'my_symbol#{1 + 1}' #=> :"my_symbol\#{1 + 1}"

# When creating a Hash, there is a special syntax for referencing a Symbol as well.


#  class Symbol

# Symbol objects represent names and some strings inside the Ruby interpreter. They are generated using the :name and :"string" literals syntax, and by the various to_sym methods. The same Symbol object will be created for a given name or string for the duration of a program's execution, regardless of the context or meaning of that name. Thus if Fred is a constant in one context, a method in another, and a class in a third, the Symbol :Fred will be the same object in all three contexts.

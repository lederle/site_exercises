# Assume you have the following code:

require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

# What will each of the 4 puts statements print?
# signature is under Date::civil; seems to have changed for 2.6.x
#
# Date.new => -4712-01-01
# Others: default month or day is 01

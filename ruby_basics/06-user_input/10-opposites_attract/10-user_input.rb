# Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

# You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

input1 = nil
input2 = nil
loop do
  loop do
    puts "Please enter a positive or negative integer:"
    input1 = gets.chomp
    break if valid_number?(input1) 
    puts "Invalid input. Only non-zero integers are allowed."
  end 
    
  loop do
    puts "Please enter a positive or negative integer:"
    input2 = gets.chomp
    break if valid_number?(input2) 
    puts "Invalid input. Only non-zero integers are allowed."
  end

  both_neg = input1.to_i.negative? && input2.to_i.negative?
  both_pos = input1.to_i.positive? && input2.to_i.positive?
  break unless both_neg || both_pos
  puts "Sorry. One integer must be positive, one must be negative."
  puts "Please start over."
end
puts "#{input1} + #{input2} = #{input1.to_i + input2.to_i}"

# Examples:

# $ ruby opposites.rb
# >> Please enter a positive or negative integer:
# 8
# >> Please enter a positive or negative integer:
# 0
# >> Invalid input. Only non-zero integers are allowed.
# >> Please enter a positive or negative integer:
# -5
# 8 + -5 = 3

# $ ruby opposites.rb
# >> Please enter a positive or negative integer:
# 8
# >> Please enter a positive or negative integer:
# 5
# >> Sorry. One integer must be positive, one must be negative.
# >> Please start over.
# >> Please enter a positive or negative integer:
# -7
# >> Please enter a positive or negative integer:
# 5
# -7 + 5 = -2

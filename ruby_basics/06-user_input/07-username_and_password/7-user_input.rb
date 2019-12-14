# In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name. The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect.
# 
# Examples:
# 
# $ ruby login.rb
# >> Please enter user name:
# John
# >> Please enter your password:
# Hello
# >> Authorization failed!
# >> Please enter user name:
# mary
# >> Please enter your password:
# SecreT
# >> Authorization failed!
# >> Please enter user name:
# admin
# >> Please enter your password:
# root
# >> Authorization failed!
# >> Please enter user name:
# admin
# >> Please enter your password:
# SecreT
# Welcome!
# 

USER = "admin"
PASSWORD = "SecreT"
loop do
  puts "Please enter user name:"
  name = gets.chomp
  puts "Please enter your password:"
  password = gets.chomp
  unlock = name == USER && password == PASSWORD
  break if unlock
  puts "Authorizarion failed!"
end
puts "Welcome!"

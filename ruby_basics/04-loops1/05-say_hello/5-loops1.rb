# Modify the code below so "Hello!" is printed 5 times.

say_hello = true
count = 0
while say_hello
  count += 1
  puts 'Hello!'
  say_hello = false if count == 5
end

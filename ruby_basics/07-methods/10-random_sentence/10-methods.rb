# The variables below are both assigned to arrays. The first one, names, contains a list of names. The second one, activities, contains a list of activities. Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into a sentence and returns it from the method.

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(ary)
  # use Array#sample
  ary[rand(ary.size)]
end

def activity(ary)
  # use Array#sample
  ary[rand(ary.size)]
end

def sentence(name, activity)
  puts "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))

# Example output:

# George went walking today!

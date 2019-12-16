# Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange'

p colors.split.any?("yellow")
p colors.split.any?("purple")

# Expected output:

# true
# false

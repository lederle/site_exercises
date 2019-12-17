# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

# Signature
# step(by: step, to: limit) {|i| block } → self

# This iterates 5 and 8 to the block, which are printed.  
# Read as *from 5 to 10 by 3*

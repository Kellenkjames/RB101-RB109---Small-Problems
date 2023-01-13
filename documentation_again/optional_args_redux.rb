# Optional Arguments Redux

# Assume you have the following code: What will each of the 4 puts statements print?

require 'date'

puts Date.civil
# -4712-01-01

puts Date.civil(2016)
# 2016-01-01

puts Date.civil(2016, 5)
# 2016-05-01

puts Date.civil(2016, 5, 13)
# 2016-05-13

# Takeaway: The signature for the class method uses `[]` to show that all of the arguments are optional 
# Optional Arguments Redux

# Assume you have the following code:

require 'date'

# civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date

puts Date.civil                               # => -4712-01-01
puts Date.civil(2016)                   # => 2016-01-01
puts Date.civil(2016, 5)              # => 2016-05-01
puts Date.civil(2016, 5, 13)        # => 2016-05-13

# When a signature uses `[]` it shows all of the arguments are optional. From this signature, we can see the arguments to `civil` can be supplied in 5 different ways:

Date.civil                                                        # everything defaults
Date.civil(2016)                                             # month, mday, start use defaults
Date.civil(2016, 5)                                         # mday, start use defaults
Date.civil(2016, 5, 13)                                   # start uses default
Date.civil(1751, 5, 13, Date::ENGLAND)      # nothing defaults

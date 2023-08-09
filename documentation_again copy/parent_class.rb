# Parent Class:

# Use irb to run the following code:

s = 'abc'
puts s.public_methods.inspect

# How would you modify this code to print just the public methods that are defined or overridden by the `String` class?

puts s.public_methods(false).inspect

=begin

Setting the optional argument to false means we only output the public methods of the "receiver" which is the `String` class - it will not inherit public methods from parent or superclasses.

=end
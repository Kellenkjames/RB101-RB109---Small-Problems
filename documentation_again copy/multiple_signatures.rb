# Multiple Signatures

# What do each of these puts statements output?

a = %w(a b c d e)

puts a.fetch(7)
# => IndexError: index 7 outside of array bounds: -5...5

puts a.fetch(7, 'beats me')
# => beats me

puts a.fetch(7) { |index| index**2 }
# => 49

=begin

Reading the documentation, we see that `#fetch` simply returns the element of an Array by it index, but it also does bounds checking (which `Array#[]` does not); that is, it checks whether the specified element actually exists before fetching it, and raises and error if it does not exist.

=end
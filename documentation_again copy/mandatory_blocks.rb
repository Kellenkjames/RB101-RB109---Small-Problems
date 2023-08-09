# Mandatory Blocks

# The `Array#bsearch` method is used to search ordered `Array` s more quickly than `#find` and `#select` can. Assume you have the following code:

a = [1, 4, 8, 11, 15, 19]

# How would you search this Array to find the first element whose value exceeds 8?

a.bsearch { |num| num > 8 } # => 11

=begin

`Array#bsearch` only considers the truthiness of the block's return value when determining the final return value of the method.

The method returns the first element for which the block's return value evaluates as "truthy"; otherwise; returns 'nil'.

=end
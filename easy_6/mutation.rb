# Mutation

# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

=begin

Written Response: The first `each` loop simply copies a bunch of references from `array1 `to `array2`. When that first loop completes, both arrays not only contain the same values, they contain the same String objects.

Since both variables are associated with the same object, using either variable to mutate the object is reflected in the other variable.

=end
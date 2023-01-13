# Default Arguments in the Middle

# Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
# => [4, 5, 3, 6]

# https://docs.ruby-lang.org/en/3.2/syntax/calling_methods_rdoc.html#label-Positional+Arguments 
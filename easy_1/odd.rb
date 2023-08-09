=begin

* P - [Understanding the] Problem

Problem: Given a method that takes one integer argument, which may be positive, negative, or zero - return true if the number's value is odd. You may assume that the argument is a valid integer value.

input: integer
output: boolean
rules:
        - Explicit Requirements:
          - Method accepts one integer argument (which may be positive, negative, or zero)

        - Implicit Requirements:
          - Argument is a valid integer value (no floating numbers or fractions)

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number

- Call a method that returns the absolute value of `number`
- If the return value from previous method divided by 2 leaves a remainder of 1:
  - return true (number is odd)
- Else
  - return false (number is even)
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def is_odd?(number)
  number.abs % 2 == 1
end

puts is_odd?(2)         # => false
puts is_odd?(5)         # => true
puts is_odd?(-17)         # => true
puts is_odd?(-8)          # => false
puts is_odd?(0)           # => false
puts is_odd?(7)           # => true

#_________________________________________________

# Futher Exploration:

# If you weren't certain whether `%` were the modulo or remainder operator, how would you rewrite `is_odd?` so it worked regardless? Rewrite `#is_odd?` to use `Integer#remainder` instead of `%`.

def is_odd?(number)
  number.abs.remainder(2) == 1
end

is_odd?(2)          # => false
is_odd?(5)          # => true
is_odd?(-17)          # => true
is_odd?(-8)         # => false
is_odd?(0)          # => false
is_odd?(7)          # => true
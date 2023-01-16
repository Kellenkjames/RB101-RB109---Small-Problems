# Odd

=begin

* P - [Understanding the] Problem

PROBLEM: Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

- input: integer
- output: boolean
- rules:
          - Explicit Requirements:
            - integer argument can be positive, negative, or zero
            - method returns true if the number's absolute value is odd

          - Implicit Requirements:
            - The argument is a valid integer value

          Clarifying Questions:
            - What do we mean by absolute value? 
            
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

N / A

__________________________________________________

* A - Algorithm

- Find the absolute value of the integer:
  - If the integer's absolute value is odd
    - return true
  - Else
    - return false
  end

__________________________________________________

* C - Code

=end

# _________________________________________________

def is_odd?(number)
  number.abs.odd? ? true : false
end

puts is_odd?(2)





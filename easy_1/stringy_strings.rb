# Stringy Strings

=begin

* P - [Understanding the] Problem

PROBLEM: Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

- input: integer
- output: string
- rules:
          - Explicit Requirements:
            - Method takes one argument (a positive integer)
            - Returns a string of alternating 1s and 0s
            - String always starts with 1
          
          - Implicit Requirements:
            -  Integer cannot be zero or negative

__________________________________________________

* E - Examples / Test Cases

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Initialize an empty variable called "str"
- Initialize a counter variable and set equal to 0
- While counter is less than integer:
  - If counter is even
    - append '1' to the empty string
  - Else
    - append '0' to the empty string
  -end
- break if counter > str.size

return str
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def stringy(number)
str = ''
counter = 0

while counter < number
  counter.even? ? str << '1' : str << '0'
  counter += 1
  break if counter > str.size
end

str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
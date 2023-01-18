# Stringy Strings

=begin

* P - [Understanding the] Problem

Problem: Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

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

Array []

__________________________________________________

* A - Algorithm

- Initialize an empty array called arr
- Initialize a counter variable and set equal to 0
- While counter is less than size:
  - If counter is even
    - append '1' to the empty string
  - Else
    - append '0' to the empty string
  -end
- break if counter > str.size

arr.join
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def stringy(size)
arr = []
counter = 0

while counter < size
  counter.even? ? arr << 1 : arr << 0
  counter += 1
end

arr.join
end

stringy(6) == '101010'
stringy(9) == '101010101'
stringy(4) == '1010'
stringy(7) == '1010101'

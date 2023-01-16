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


=end
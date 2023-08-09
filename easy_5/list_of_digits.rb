=begin

* P - [Understanding the] Problem

Problem: Given a method that takes one argument, a positive integer, return a list of the digits in the number

input: integer
output: array of integers
rules:
        - Explicit Requirements:
          - Method takes one argument, a positive integer, and returns a list of the digits in the number

        - Implicit Requirements:
          - Argument must be a positive integer

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

puts digit_list(12345) == [1, 2, 3, 4, 5]                 # => true
puts digit_list(7) == [7]                                          # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]          # => true
puts digit_list(444) == [4, 4, 4]                            # => true

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number

1. Convert `number` to string
  2. (method chain previous return value) split the string into an array of characters
  3. (method chain previous return value) tranform characters back to integers

__________________________________________________

=end

#_________________________________________________

#* C - Code

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]           # => true
puts digit_list(7) == [7]                                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]     # => true
puts digit_list(444) == [4, 4, 4]                        # => true
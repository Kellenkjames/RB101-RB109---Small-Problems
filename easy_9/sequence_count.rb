=begin

* P - [Understanding the] Problem

Problem: Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

input: two integers
output: Array of integers
rules:
        - Explicit Requirements:
          - Return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number

        - Implicit Requirements:
          - Count argument will always have a value of 0 or greater
          - Starting number can be any integer value

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define two method parameters: count, first_num_of_sequence

- Iterate from `1` up to `count` and each time the block is called:
  - return `first_num_of_sequence` multiplied by `i`
- repeat until all numbers have been processed

- return new Array

__________________________________________________

=end

#_________________________________________________

#* C - Code

def sequence(count, first_num_of_sequence)
  (1..count).map { |i| first_num_of_sequence * i }
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
=begin

* P - [Understanding the] Problem

Problem: Write a method named `include?` that takes an Array and a search value as arguments. This method should return `true` if the search value is in the array, `false` if it is not.

input: array, integer
output: boolean
rules:
        - Explicit Requirements:
          - Method should return `true` if the search values is in the array, `false` if it not

        - Implicit Requirements:
          - You may not use the `Array#include?` method in your solution

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a two method parameters: array, search_value

- Iterate over `arr` and for each iteration:
  - return `true` if the current element is included in `arr`; `false` otherwise
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def include?(array, search_value)
  array.any? { |element| element == search_value }
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
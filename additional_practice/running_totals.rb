=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an array of numbers, return an array with the same number of elements, with each element's value being the running total from the original array.

input: array
output: new array
rules:
        - Explicit Requirements:
          - Method takes an array of numbers
          - Returns an array with the same number of elements
          - Each element's value being the running total from the original array

        - Implicit Requirements:
          - Empty array input returns an empty array

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: array

- Initialize a local variable called sum and assign to the integer `0`

- Iterate over `array`:
  - for each iteration: 
    - add `sum` to the current `array` element
  end
end

return new object

__________________________________________________

=end

#_________________________________________________

#* C - Code

def running_total(array)
  sum = 0
  array.map { |num| sum += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
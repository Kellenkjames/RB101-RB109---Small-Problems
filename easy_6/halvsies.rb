=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an Array as an argument, return two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

input: array
output: pair of nested Arrays
rules:
        - Explicit Requirements:
          - Method returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively
          - If the original array contains an odd number of elements, the middle element should be placed in the first half Array

        - Implicit Requirements:
          - Method should work for Array inputs of size 1 or less

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

__________________________________________________

* D - Data Structure

Nested Arrays [ [], [] ]

__________________________________________________

* A - Algorithm

Define a single method parameter: arr

- Initialize a local variable called middle and assign to the `arr` input size divided by `2.0` (rounded up)

- Initialize a local variable called first_half and assign to the return object of slicing `arr` by the length of `middle` starting from position `0` 

- Initialize a local variable called last_half and assign to the return object of slicing `arr` by the elements starting from `middle` to the end of the array

return [`first_half`, `last_half`]

__________________________________________________

=end

#_________________________________________________

#* C - Code

def halvsies(arr)
  middle = (arr.size / 2.0).ceil
  first_half = arr[0, middle]
  last_half = arr[middle..-1]
  [first_half, last_half]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
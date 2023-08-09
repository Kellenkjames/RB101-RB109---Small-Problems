=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an Array of numbers, returns an Array with the same number of elements, and each element has the running total from the original Array.

input: array of numbers
output: array of numbers (new)
rules:
        - Explicit Requirements:
          - Method takes an Array of numbers
          - Returns an Array with the same number of elements
          - Each element has the running total from the original Array

        - Implicit Requirements:
          - Empty array input will return an empty array

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

Define a single method parameter: arr

- Initialize a local variabe called sum and assign to the integer `0`
- Iterate over `arr` and for each iteration:
  - transform the current `num` by adding `sum` to `num`
-end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def running_total(arr)
  sum = 0
  arr.map { |num| sum += num }
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

#_________________________________________________

# Further Exploration: Try solving this problem using `Enumerable#each_with_object`

def running_total(arr)
  sum = 0
  arr.each_with_object([]) do |num, array|
    array << sum += num
  end
end
=begin

* P - [Understanding the] Problem

Problem: Write a method that returns an Array that contains every other element of an `Array` that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

input: Array of integers
output: new Array of integers
rules:
        - Explicit Requirements:
          - Method will return an Array that contains every other element of the Array that is passed in as an argument
          - Values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array

        - Implicit Requirements:
          - Empty Array argument will return an empty Array

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: array

Initialize a local variable called new_arr and assign to an empty Array literal `[]`

- Iterate over `array` and return all elements from the collection at even indices

__________________________________________________

=end

#_________________________________________________

#* C - Code

def oddities(array)
  array.select.with_index { |_, index| index.even? }
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

#_________________________________________________

# Further Exploration: Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array. Try to solve this exercise in at least 2 additional ways.

#1)
def oddities_v2(array)
  array.select.with_index { |_, index| index.odd? }
end

oddities_v2([2, 3, 4, 5, 6]) == [3, 5]

# 2)
def oddities_v3(array)
  new_arr = []
  array.each_with_index do |num, index|
    new_arr << num if index.odd?
  end
  new_arr
end

oddities_v3([2, 3, 4, 5, 6]) == [3, 5]
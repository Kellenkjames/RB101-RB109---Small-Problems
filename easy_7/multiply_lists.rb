=begin

* P - [Understanding the] Problem

Problem: Given a method that takes two Array arguments in which each Array contains a list of numbers, return a new Array that contains the product of each pair of numbers from the arguments that have the same index.

You may assume that the arguments contain the same number of elements.

input: two Arrays
output: single Array
rules:
        - Explicit Requirements:
          - Return a new Array that contains the product of each pair of numbers from the arguments that have the same index

        - Implicit Requirements:
          - You may assume that the arguments contain the same number of elements

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define two method parameters: arr_one, arr_two

- Iterate over `arr_one` by element and index:
  - for each iteration (transform every element in `arr_one`):
    - multiply current element in `arr_one` by respective value in `arr_two` (accessing via index)
  end 
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def multiply_list(arr_one, arr_two)
  arr_one.each_with_index.map { |num, index| num * arr_two[index] }
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#_________________________________________________

# Further Exploration: The `Array#zip` method can be used to produce an extremely compact solution to this method. Read the documentation for `zip`, and see if you can come up with a one line solution (not counting the def and end lines).

def multiply_list_v2(arr_one, arr_two)
  arr_one.zip(arr_two).map { |subarray| subarray.inject(:*) }
end

multiply_list_v2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
=begin

* P - [Understanding the] Problem

Problem: Given a method that takes two Array arguments in which each Array contains a list of numbers, return a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

input: two Arrays
output: new Array
rules:
        - Explicit Requirements:
          - Return a new Array that contain the product of every pair of numbers formed between the elements of the two Arrays

        - Implicit Requirements:
          - You may assume that neither argument is an empty Array

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

__________________________________________________

* D - Data Structure

N/A 

__________________________________________________

* A - Algorithm

Define two method parameters: arr_one, arr_two

Task: Iterate through each item in the first array, and then multiply it by each item in the second array

- Iterate over `arr_one` (outer array) and for each iteration:
  - Iterate over `arr_two` (inner array) and for each iteration
      multiply current element in `arr_one` by current element in `arr_two`
  end
end

- flatten the returned array and sort in ascending order

__________________________________________________

=end

#_________________________________________________

#* C - Code

def multiply_all_pairs(arr_one, arr_two)
  arr_one.map do |item_1|
    arr_two.map do |item_2|
      item_1 * item_2
    end
  end.flatten.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

#_________________________________________________

# Further Exploration: Find an alternative method to solve this

def multiply_all_pairs_v2(arr_one, arr_two)
  arr_one.product(arr_two).map { |pair| pair.inject(:*) }.sort
end

multiply_all_pairs_v2([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
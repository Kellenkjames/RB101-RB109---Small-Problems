=begin

* P - [Understanding the] Problem

Problem: Given a method that combines two Arrays passed in as arguments, return a new Array that contains all elements from both Array arguments with the elements taken in alternation.

input: two Arrays
output: single Array
rules:
        - Explicit Requirements:
          - Two Arrays will be passed in as arguments
          - Return a new Array that contains all elements from both Array arguments (with alternating elements from each Array)

        - Implicit Requirements:
          - Both input Arrays:
            - Are non-empty
            - Have the same number of elements

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define two method parameters: arr_one, arr_two

- Create an array of arrays where each sub-array contains an element from `arr1` and the corresponding element from `arr2` at the same index

- Flatten the array of arrays into a single Array

__________________________________________________

=end

#_________________________________________________

#* C - Code

def interleave(arr_one, arr_two)
  arr_one.zip(arr_two).flatten
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
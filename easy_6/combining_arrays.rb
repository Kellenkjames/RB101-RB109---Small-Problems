=begin

* P - [Understanding the] Problem

Problem: Given a method that takes two Arrays as arguments, return an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

input: two Arrays
output: new Array
rules:
        - Explicit Requirements:
          - Return a new Array from two given Arrays as arguments (with no duplicates)
        
        - Implicit Requirements:
          - Returned Array should have no duplicates in the original Arrays

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define two method parameters: arr_one, arr_two

`arr_one` represents the first array input, i.e., [1, 3, 5]
`arr_two` represents the second array input, i.e, [3, 6, 9]

- Initialize an empty array and insert `arr_one` as the first element and `arr_two` as the second arg
  - flatten the nested array to a single dimensional array
  - return unique values (only)

__________________________________________________

=end

#_________________________________________________

#* C - Code

def merge(arr_one, arr_two)
  [arr_one, arr_two].flatten.uniq
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an array of integers as input, return a new array with every other element. Elements should be selected from the beginning of the array.

That is, if the input array contains elements at indices: 0, 1, 2, 3, etc., your method should return an array containing the elements at indices: 0, 2, 4, 6, etc. If the input is an empty array, the result should also be an empty array.

input: array of integers
output: new array of integers
rules:
        - Explicit Requirements:
          - Return a new array with every other element
          - Elements should be selected from the beginning of the array (based on index)
          - If the input is an empty array, the result should also be an empty array

        - Implicit Requirements:
          - N/A

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

select_every_other(['a', 'b', 'c', 'd', 'e', 'f', 'g']) == ['a', 'c', 'e', 'g']
select_every_other([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == [1, 3, 5, 7, 9]
select_every_other(['apple', 'bad', 'car', 'dinner', 'egg', 'food', 'grape']) == ['apple', 'car', 'egg', 'grape']
select_every_other([]) == []
select_every_other([1]) == [1]

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: array

- Initialize a local variable called new_arr and assign to an empty array
- Iterate over `array` and access the index for each element:
  - Append the current element to `new_arr` if the index is even
end

return `new_arr`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def select_every_other(array)
  new_arr = []
  array.each_with_index do |element, index|
    new_arr << element if index.even?
  end
  new_arr
end

p select_every_other(['a', 'b', 'c', 'd', 'e', 'f', 'g']) == ['a', 'c', 'e', 'g']
p select_every_other([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == [1, 3, 5, 7, 9]
p select_every_other(['apple', 'bad', 'car', 'dinner', 'egg', 'food', 'grape']) == ['apple', 'car', 'egg', 'grape']
p select_every_other([]) == []
p select_every_other([1]) == [1]

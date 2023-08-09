=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an Array as an argument, reverse its elements in place; that is; mutate the Array passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!

input: array
output: array (original object)
rules:
        - Explicit Requirements:
          - Reverse the array elements in place (mutate)
          - Return value should be the same Array object

        - Implicit Requirements:
          - You may not Array#reverse or Array#reverse!

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

__________________________________________________

* D - Data Structure

Array []


__________________________________________________

* A - Algorithm

Define a single method parameter: list

- Iterate over `list` up to the halfway point (array size divided by `2`) and for each iteration:
  - store the current element in a temp variable
  - swap the current element with the last element in the array
  - reassign the last element with element stored in temp variable
- repeat until block is executed for each element in the collection

__________________________________________________

=end

#_________________________________________________

#* C - Code

def reverse!(list)
  (list.size / 2).times do |num|
    temp = list[num]
    list[num] = list[-(num + 1)]
    list[-(num + 1)] = temp
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true


=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an Array, return a new Array with the elements of the original list in reverse order. Do not modify the original list.

input: array
output: new array
rules:
        - Explicit Requirements:
          - Return a new Array with the elements of the original list in reverse order.

        - Implicit Requirements:
          - Do not modify the original list
          - Cannot use Array#reverse or Array#reverse!
          - Cannot use the method you wrote in the previous exercise

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: array

- Initalize a local variable called new_arr and assign to an empty array literal `[]`
- Initalize an local variable called last_index and assign to `array.size` minus `1`

- Initalize a loop method and for each iteration:
  - append `last_index` in `array` to `new_arr`
  - subtract `1` from `index`
- repeat as long as `last_index` is greater than or equal to `0`

return `new_arr`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def reverse(array)
  new_arr = []
  last_index = (array.size - 1)

  while last_index >= 0
    new_arr << array[last_index]
    last_index -= 1
  end
  
  new_arr
end

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

#_________________________________________________

# Further Exploration: Try using `inject` or `each_with_object` to solve the same problem.

def reverse_v2(array)
  array.reverse.each_with_object([]) do |obj, arr|
    arr << obj
  end
end

reverse_v2([1,2,3,4]) == [4,3,2,1]
reverse_v2(%w(a b e d c)) == %w(c d e b a)  # => true
reverse_v2(['abc']) == ['abc']              # => true
reverse_v2([]) == []                        # => true
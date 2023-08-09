=begin

* P - [Understanding the] Problem

Problem: Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method `Array#rotate` or `Array#rotate!` for your implementation.

input: Array
output: new Array
rules:
        - Explicit Requirements:
          - Method should rotate an array by moving the first element to the end of the array
          - The original array should not be modified

        - Implicit Requirements:
          - Do not use the method `Array#rotate` or `Array#rotate!` for your implementation

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                          # => true

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: arr

* do not modify the original arr

- slice all of the elements in `arr` except the first element, then append the original first element to the end of the array

__________________________________________________

=end

#_________________________________________________

#* C - Code

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]      # => true
x == [1, 2, 3, 4]                             # => true

rotate_array(x).object_id             # 60
x.object_id                                    # 80

#_________________________________________________

# Further Exploration: Write a method that rotates a string instead of an array. Do the same thing for integers. You may use `rotate_array` from inside your new method.

def rotate_string(string)
  string[1..-1] + string[0]
end

rotate_string('hello') == 'elloh'
rotate_string('boston') == 'ostonb'
rotate_string('ruby') == 'ubyr'

#_________________________________________________

def rotate_integer(number)
  number = number.to_s
  (number[1..-1] + number[0]).to_i
end

rotate_integer(23) == 32
rotate_integer(1442) == 4421
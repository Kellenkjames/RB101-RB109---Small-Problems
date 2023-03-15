=begin

* P - [Understanding the] Problem

Problem: Given a method that takes one argument (a positive integer) - return a list of the digits in the number.

input: Integer
output: Array
rules:
        - Explicit Requirements:
          - Method takes a single argument (a positive integer)
          - Return a list of digits in the number

        - Implicit Requirements:
          - Don't use any built in methods, i.e., digits

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

digit_list(12345) == [1, 2, 3, 4, 5]
digit_list(7) == [7]
digit_list(375290) == [3, 7, 5, 2, 9, 0]
digit_list(444) == [4, 4, 4]

__________________________________________________

* D - Data Structure

=> Array[]

__________________________________________________

* A - Algorithm

Initialize a local variable called digits_arr and assign to an empty Array literal `[]`
Initialize a local variable called index and assign to the Integer 0

- Reassign `number` to the return value of converting `number` to string

- Iterate over `number` which is now a string:
  - For each iteration:
    - Slice the current String`index` and append value to`digits_arr`
    - Incement index by 1
  - Repeat this step until `index` is less than`number`

- Iterate over `digits_arr`:
  - For each iteration:
    - Transform each String to Integer
  - Repeat this step until all strings have been transformed to integers

__________________________________________________

=end

#_________________________________________________

#* C - Code

def digit_list(number)
  digits_arr = []
  index = 0

  number = number.to_s
  
  while index < number.size
    digits_arr << number.slice(index)
    index += 1
  end
  
  digits_arr.map(&:to_i)
end

digit_list(12345) == [1, 2, 3, 4, 5]
digit_list(7) == [7]
digit_list(375290) == [3, 7, 5, 2, 9, 0]
digit_list(444) == [4, 4, 4]


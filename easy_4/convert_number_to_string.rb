=begin

* P - [Understanding the] Problem

Problem: Write a method that takes a positive integer or zero, and converts it to a string representation.

input: Integer
output: String
rules =>
        - Explicit Requirements:
          - Do not use any of the standard conversion methods available in Ruby, i.e., `Integer#to_s`, `String#()`, `Kernel#format`, etc. 

        - Implicit Requirements:
          - No leading characters, i.e., `+`, or `-`

        - Clarifying Questions =>
          - N/A

__________________________________________________

* E - Examples / Test Cases

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

__________________________________________________

* D - Data Structure

STRINGS = { 
  0 => '0', 
  1 => '1', 
  2 => '2', 
  3 => '3', 
  4 => '4', 
  5 => '5', 
  6 => '6', 
  7 => '7', 
  8 => '8',
  9 => '9'
}

__________________________________________________

* A - Algorithm

Initialize a local variable called string and assign to empty String literal ' '
Initialize a local variable called arr and assign to the return value of digits reversed invoked on `number`

Iterate over the length of `arr` and define`digit` as a block parameter
  Iterate over the length of `STRINGS` and define key and value as block parameters:
    - If `digit` is equal to`key`
      - Reassign `string` to the return value of `string` + `value`
    - Repeat until outer loop is finished looping over elements
end

return string

__________________________________________________

=end

#_________________________________________________

#* C - Code

STRINGS = {
  0 => '0',
  1 => '1', 
  2 => '2', 
  3 => '3', 
  4 => '4', 
  5 => '5', 
  6 => '6', 
  7 => '7', 
  8 => '8', 
  9 => '9'
}

def integer_to_string(number)
  string = ''
  arr = number.digits.reverse # [4, 3, 2, 1]
  
  arr.each do |digit|
    STRINGS.each do |key, value|
      if digit == key
        string += value
      end
    end
  end

  string
end

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

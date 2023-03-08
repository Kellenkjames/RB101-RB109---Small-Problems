=begin

* P - [Understanding the] Problem

Problem: In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

input: Integer
output: String
rules:
        - Explicit Requirements:
          - Cannot use any of the standard conversion methods in Ruby, i.e.,`Integer#to_s`, `String()`, `Kernel#format`, etc.

        - Implicit Requirements:
          - No floating point numbers

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

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
Initialize a local variable called abs_value and assign to the absolute value of `number`
Initialize a local variable called arr and assign to the return value of digits reversed invoked on`abs_value`

Iterate over the length of `arr` and define`digit` as a block parameter
  Iterate over the length of `STRINGS` and define key and value as block parameters:
    - If `digit` is equal to`key`
      - Reassign `string` to the return value of `string` + `value`
    - Repeat until outer loop is finished looping over elements
end

if number < 0
  "-" << string
elsif number > 0
  "+" << string
else
  string
end

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

def signed_integer_to_string(number)
  string = ''
  abs_value = number.abs                   # -123 --> 123
  arr = abs_value.digits.reverse          # [4, 3, 2, 1]
  
  arr.each do |digit|
    STRINGS.each do |key, value|
      if digit == key
        string += value
      end
    end
  end

  if number < 0
    '-' << string
  elsif number > 0
    '+' << string
  else
    string
  end

end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

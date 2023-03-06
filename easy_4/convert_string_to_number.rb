=begin

* P - [Understanding the] Problem

Problem: Write a method that takes a String of digits, and returns the appropriate number as an Integer. You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as `String#to_i`, `Integer(), etc.`

input: String
output: Integer
rules:
        - Explicit Requirements:
          - Method takes a String of digits, and returns the appropriate number as an Integer
          - You cannot use any of the standard conversion methods available in Ruby

        - Implicit Requirements:
          - Ignore leading `+` or `-` signs
          - Ignore invalid characters
          - Assume all characters will be numeric

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

string_to_integer('4321') == 4321
string_to_integer('570') == 570

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

Initialize a local variable called `arr` and assign to return value of octal digits for each substring.

Iterate over `arr`:
  - For each iteration:
    - Transform each element with the octal digit
    - Repeat until loop reaches end of collection
  - Return new collection

Iterate over `arr`
  - Use accumulator and iterator to concatenate each element in the collection
  - Return value

Test Case / Example: 

The value of the accumulator `a` after each element in the array is evalauted
Respectively, is:

[4, 3, 2, 1]
0*10 + 4 = 4
4*10 + 3 = 43
43*10 + 2 = 432
432*10 + 1 = 4321

__________________________________________________

=end

#_________________________________________________

#* C - Code

def string_to_integer(string)
  arr = string.chars.map { |substring| substring.oct }
  arr.inject{ |a, i| (a * 10 + i) }
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
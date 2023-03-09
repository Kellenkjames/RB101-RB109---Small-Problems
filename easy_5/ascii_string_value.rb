=begin

* P - [Understanding the] Problem

Problem: Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

input: String
output: Integer
rules:
        - Explicit Requirements:
          - Determine and return the ASCII string value of a string that is passed in as an argument
          - ASCII string value is the sum of the ASCII values of every character in the string

        - Implicit Requirements:
          - Empty strings should return 0

        - Clarifying Questions:
          - Is whitespace considered an ASCII character

__________________________________________________

* E - Examples / Test Cases

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Initialize a local variable called sum and assign to 0
- Split string into chars
- Iterate over chars:
  - Reassign `sum` to the return value of each ASCII value
- Repeat until end of string collection is reached

return sum

__________________________________________________

=end

#_________________________________________________

#* C - Code

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0


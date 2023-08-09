=begin

* P - [Understanding the] Problem

Problem: Given a method, determine and return the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string.

You may use String#ord to determine the ASCII value of a character.

input: string
output: integer
rules:
        - Explicit Requirements:
          -  Method will determine and return the ASCII string value of a string that is passed in as an argument
          - The ASCII string value is the sum of the ASCII values of every character in the string

        - Implicit Requirements:
          - You may use String#ord to determine the ASCII value of a character

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

Initialize a local variable called sum and assign to the integer `0`

- Convert `string` to an array of characters
  - Iterate over the array of characters and for each iteration:
    - add the integer ordinal of the current `char` to `sum`
end

return `sum`

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

# Further Exploration: There is an Integer method such that:

# char.ord.mystery == char

# Where `mystery` is our mystery method. Can you determine what method name should be used in place of `mystery`? 

char = 'd'
char.ord.chr == char # true

# What happens if you try this with a longer string instead of a single character?

string = 'abc'
string.ord.chr == string # false
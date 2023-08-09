=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string, return a new string in which every character is doubled.

input: String
output: new String
rules:
        - Explicit Requirements:
          - Return a new string in which every character is doubled

        - Implicit Requirements:
          - Empty string is not treated as a character

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Convert `string` to an array of chars, iterate over each char, and for each iteration:
  - multiply the current `char` by `2` (doubles each character)
- repeat this step until each `char` in `string` has been processed

- return new Array of chars and join to string

__________________________________________________

=end

#_________________________________________________

#* C - Code

def repeater(string)
  string.chars.map { |char| char * 2}.join
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a single argument, a string, return a new string with the words in reverse order.

input: String
output: new String
rules:
        - Explicit Requirements:
          - Return a new string with the words in reverse order

        - Implicit Requirements:
          - Any number of spaces results in ''

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a method with a single parameter: string

1. Split `string` into an array of substrings
2. Reverse the order of the array of substrings
3. Join the array of substrings to a new String

__________________________________________________

=end

#_________________________________________________

#* C - Code

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

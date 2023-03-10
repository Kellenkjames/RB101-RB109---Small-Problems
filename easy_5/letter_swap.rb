=begin

* P - [Understanding the] Problem

Problem: Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces.

input: String
output: String (new object)
rules:
        - Explicit Requirements:
          - Method that takes string input and returns a new string in which the first and last letters of every word are swapped
          
        - Implicit Requirements:
          - Every word contains at least one letter
          - The string will always contain at least one word
          - Each string contains nothing but words and spaces

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Initialize a local variable called words and assign to the String input

- Return an array of substrings of `words` that are the result of splitting `words` at each occurence of a space
- Iterate over each array of substrings:
  - Split substring to letters and iterate over each letter within substring:
    - Swap the first and last letters:
      - Assign the first index of substring to the last letter
      - Assign the last index of substring to the first letter
    - Repeat until the first and last letters of every word are swapped

  - Join array back to a new String object

__________________________________________________

=end

#_________________________________________________

#* C - Code

def swap(string)
  words = string.split(' ')
  
  words.each do |substring|
      substring.split.map do |letter|
        substring[0] = letter[-1]
        substring[-1] = letter[0]
      end
    end
    
    words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'




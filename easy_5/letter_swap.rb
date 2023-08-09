=begin

* P - [Understanding the] Problem

Problem: Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces.

input: string
output: new string
rules:
        - Explicit Requirements:
          - Return a new string in which the first and last letters of every word are swapped

        - Implicit Requirements:
          - You may assume that every word contains at least one letter, and that the string will always contain at least one word
          - You may also assume that each string contains nothing but words and spaces

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string_of_words

- Split `string_of_words` into an array of words and iterate over each word:
  - initialize a local variable called first_letter and assign to the first letter in current `word`
  - initialize a local variable called last_letter and assign to the last letter in current `word`
  - reassign the first letter in `word` to the letter assigned to `last_letter`
  - reassign the last letter in `word` to the letter assigned to `first_letter`
  - return `word`
- join words to string separated by whitespace

__________________________________________________

=end

#_________________________________________________

#* C - Code

def swap(string_of_words)
  string_of_words.split.map do |word|
    first_letter, last_letter = word[0], word[-1]
    word[0], word[-1] = last_letter, first_letter
    word
  end.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'
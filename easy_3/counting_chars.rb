=begin

* P - [Understanding the] Problem

Problem: Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

input: string
output: string
rules:
        - Explicit Requirements:
          - Write a program that will ask a user for input of a word or multiple words
          - Return the number of characters
          - Spaces should not be counted as a character

        - Implicit Requirements:
          - Titlecase is not a factor

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

input:
Please write word or multiple words: walk

output:
There are 4 characters in "walk".

input:
Please write word or multiple words: walk, don't run

output:
There are 13 characters in "walk, don't run".

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

- Ask the user to input a word or multiple words
  - initialize a local variable called input and assign to the user input
  - delete whitespace from `input`
  - return the size of the new_string returned

- Output a custom message

__________________________________________________

=end

#_________________________________________________

#* C - Code

print '==> Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
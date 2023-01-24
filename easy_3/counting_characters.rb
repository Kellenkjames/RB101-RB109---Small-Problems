# Counting the Number of Characters

=begin

* P - [Understanding the] Problem

Problem: Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

input: string
output: string
rules:
        - Explicit Requirements:
          - Ask a user for an input of a word or multiple words
          - Give back the number of characters

        - Implicit Requirements:
          - Spaces should not be counted as a character

        - Clarifying Questions:
          - Can the string contain non-alphabetical characters? 

__________________________________________________

* E - Examples / Test Cases

input: Please write word or multiple words: walk
output: There are 4 characters in "walk".

input: Please write word or multiple words: walk, don't run
output: There are 13 characters in "walk, don't run".

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Prompt the user to write a word or multiple words:
- input = gets.chomp
- number_of_characters = input.delete(' ').size
- print "There are #{number_of_characters} characters in #{input}."

__________________________________________________

=end

#_________________________________________________

#* C - Code

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
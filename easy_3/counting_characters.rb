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

Array []

__________________________________________________

* A - Algorithm

- Initialize a variable called chars and assign an empty array []

- Prompt the user to write a word or multiple words:
  - words = gets.chomp.downcase

- Iterate over each character words
  - For each iteration:
    - Delete spaces " "
    - chars << char
  - end

  - chars.count

  print "There are chars.count in in #{words}"

__________________________________________________

=end

#_________________________________________________

#* C - Code

chars = []

print 'Please write word or multiple words: '
words = gets.chomp.downcase

modified_words = words.delete " " 

modified_words.each_char do |char|
  chars << char
end

puts "There are #{chars.count} characters in #{words}."
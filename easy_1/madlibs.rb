=begin

* P - [Understanding the] Problem

Problem: Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

input: string
output: string
rules:
        - Explicit Requirements:
          - Program will prompt for the following:
            - noun
            - verb
            - adverb
            - adjective
        
        - Implicit Requirements:
          - Create your own madlib

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Main program:
- ask the user to enter a noun:
  - initialize a local variable called noun and assign to user input
- ask the user to enter a verb:
  - initialize a local variable called verb and assign to user input
- ask the user to enter an adjective:
  - initialize a local variable called adjective and assign to user input
- ask the user to enter an adverb:
  - initialize a local variable called adverb and assign to user input

output string and inject each local variable to form a madlib

__________________________________________________

=end

#_________________________________________________

#* C - Code

puts 'Enter a noun: '
noun = gets.chomp

puts 'Enter a verb: '
verb = gets.chomp

puts 'Enter an adjective: '
adjective = gets.chomp

puts 'Enter an adverb:'
adverb = gets.chomp

puts "The #{adjective} #{noun} #{verb} #{adverb} around the world."
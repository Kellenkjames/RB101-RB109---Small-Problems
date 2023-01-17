# Madlibs

=begin

* P - [Understanding the Problem]

PROBLEM: Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

inputs: string
output: string
rules:
        - Explicit Requirements:
          - prompt user for a:
            - noun
            - verb
            - adverb
            - adjective

        - Implicit Requirements:
          - Non strings objects will not be accepted

        - Clarifying Questions:
          - Should the player be asked to play again?
          - Do we need any string validation? 

__________________________________________________

* E - Examples / Test Cases

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

__________________________________________________

* D - Data Structue

N / A

__________________________________________________

* A - Algorithm

- Ask the user to enter a noun:
  - assign the value to a variable called noun
- Ask the user to enter a verb:
  - assign the value to a variable called verb
- Ask the user to enter an adjective:
  - assign the value to a variable called adjective
- Ask the user to enter an adverb:
  - assign the value to a variable called adverb

print madlib: Do you #{verb} your #{adjective} #{noun} quickly? That's hilarious!

__________________________________________________

=end

#_________________________________________________

#* C - Code

puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} quickly? That's hilarious!"
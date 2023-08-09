=begin

* P - [Understanding the] Problem

Problem: Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

input: string
output: string
rules:
        - Explicit Requirements:
          - Ask for user's name, then greet the user
          - If the user inputs their name with an `"!"` as the last character in the string
            - output a new string in all caps
          - Else
            - output a string with standard title casing

        - Implicit Requirements:
          - No data validation

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

- Ask the user for their name:
  - initialize a local variable name called name and assign to the user input
  - If the last character of `name` is a `"!"`
    - output custom string with `name` uppercased
  - Else
    - output custom string in standard title casing

__________________________________________________

=end

#_________________________________________________

#* C - Code

puts '==> What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
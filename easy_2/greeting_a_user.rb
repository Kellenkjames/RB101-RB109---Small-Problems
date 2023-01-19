# Greeting a user

=begin

* P - [Understanding the] Problem

Problem: Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

input: string
output: string
rules:
        - Explicit Requirements:
          - Ask for user's name
          - Make program greet the user
          - If the user writes "name!" then the computer yells back to the user

        - Implicit Requirements:
          - Non-string objects are not allowed

__________________________________________________

* E - Examples / Test Cases

What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm 

- Prompt user for their name
- name = gets.chomp

- If name includes !
  print "Hello name"
- Else
  print "HELLO NAME. WHY ARE WE SCREAMING?"
end

__________________________________________________

=end

#_________________________________________________
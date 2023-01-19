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

- If name.include?('!')
  name = name.chop
  print "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
- Else
  print "Hello #{name}."
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

print 'What is your name? '
name = gets.chomp

if name.include?('!')
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

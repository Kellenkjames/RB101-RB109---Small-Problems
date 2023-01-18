# Bannerizer

=begin

* P - [Understand the] Problem

Problem: Write a method that will take a short line of text, and print it within a box.

input: string
output: string (within a box)
rules:
        - Explicit Requirements:
          - Method will take a short line of text
          - Print it within a box

        - Implicit Requirements:
          - Input should always fit in your terminal window

        - Clarifying Questions:
          - Do we need to worry about any other objects that are not strings? 

__________________________________________________

* E - Examples / Test Cases

print_in_box('')
+--+
|  |
|  |
|  |
+--+

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Initialize a variable named horizontal_rule and set equal to:
  - "+#{'-' * (message.size + 2)}+"
- Initialize a variable named empty_line and set equal to:
  - "|#{' ' * (message.size + 2)}|"

- Print horizontal_rule
- Print empty_line
- Print message
- Print empty_line
- Print horizontal_rule
__________________________________________________

=end

#_________________________________________________

#* C - Code

def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"
  
  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')


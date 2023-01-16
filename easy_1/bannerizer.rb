# Bannerizer

=begin

* P - [Understand the] Problem

PROBLEM: Write a method that will take a short line of text, and print it within a box.

input: string
output: string (within a box)
rules:
        - Explicit Requirements:
          - Method will take a short line of text
          - Print it within a box

        - Implicit Requirements:
          - The input should always fit in your terminal window

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

- Initialize a variable named horizontal_rule and assign the following:
  - Length of horizontal should be the length of the message + 2 characters
- Initialize a variable named vertical_rule and assign the following:
  - Height ot vertical_rile should be "|"

- Print horizontal_rule
- Print vertical_rule
- Print message
- Print vertical_rule
- Print horizontal_rule
__________________________________________________

=end

#_________________________________________________

#* C - Code

def print_in_box(message)
  horizontal_rule = '+'    + '-' * (message.size + 2)              +                          '+'
  vertical_rule     =      '|' + ' ' * (message.size + 2)               +                           '|'
  message           =      '|' +  (' ' * 1) +  message + (' ' * 1)      +                            '|'
  
  puts horizontal_rule
  puts vertical_rule
  puts message
  puts vertical_rule
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')


=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a short line of text, print it within a box. You may assume that the input will always fit in your terminal window.

input: string
output: string
rules:
        - Explicit Requirements:
          - Method accepts a string and prints it within a box
          - Input will always fit in the terminal window (no line wrapping)

        - Implicit Requirements:
          - Width of the box should closely match the length of the string input (leave room for padding)

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

print_in_box('To boldly go where no one has gone before.')

+--------------------------------------------+
|                                                                             |
| To boldly go where no one has gone before. |
|                                                                             |
+--------------------------------------------+

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: text

1. Initalize a local variable called `box_width` and assign to the text size + 2 spaces

2. Initalize a local variable called `box_top_bottom` and assign to the string `+` at both ends concatenated with `-` multiplied by the `box_width`

3. Initalize a local variable called `box_sides` and assign to the string `|` at both ends concatenated with " " multiplied by the `box_width`

Output the box:
  print `box_top_bottom`
  print`box_sides`
  print "| #{text} |" 
  print `box_sides`
  print `box_top_bottom`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def print_in_box(text)
  box_width = text.size + 2
  box_top_bottom = '+' + ('-' * (box_width)) + '+'
  box_sides = '|' + (' ' * (box_width)) + '|'
  
  puts box_top_bottom
  puts box_sides
  puts "| #{text} |"
  puts box_sides
  puts box_top_bottom

end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

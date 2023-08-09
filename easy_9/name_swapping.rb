=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a first name, a space, and a last name passed as a single String argument, returns a string that contains the last name, a comma, a space, and the first name.

input: String
output: new String
rules:
        - Explicit Requirements:
          - Return a string that contains the last name, a comma, a space, and the first name (in this order)

        - Implicit Requirements:
          - You can assume the string input will never be empty

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

swap_name('Joe Roberts') == 'Roberts, Joe'

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: name

Split `name` into an array of words:
  - reverse words
  - join Array of words to new String with comma as the delimiter

- return value is the last name, a comma, a space, and the first name

__________________________________________________

=end

#_________________________________________________

#* C - Code

def swap_name(name)
  name.split(' ').reverse.join(', ')
end

swap_name('Joe Roberts') == 'Roberts, Joe'
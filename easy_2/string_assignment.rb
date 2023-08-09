=begin

* P - [Understanding the] Problem

Problem: Determine what the following code outputs:

input: N/A
output: N/A
rules:
        - Explicit Requirements:
          - N/A

        - Implicit Requirements:
          - N/A

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

Alice
Bob

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

N/A

__________________________________________________

=end

#_________________________________________________

#* C - Code

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Can you explain these results?

name             # 'BOB'
save_name   # 'BOB'

# String#upcase! is a mutating method. Since both variables`name` and `save_name` both reference the the same object, the string `'Bob'`, using either varaible to mutate the object is reflected in the other variable.
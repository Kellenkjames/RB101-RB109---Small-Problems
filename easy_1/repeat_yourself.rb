=begin

* P - [Understanding the] Problem

Problem: Given a method that takes two arguments, a string and a positive integer, output the string as many times as the integer indicates.

input: string, positive integer
output: string
rules:
        - Explicit Requirements:
          - One argument must be a string
          - One argument must be a positive integer

        - Implicit Requirements:
          - Each output will be on it's own separate line
        
        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

repeat('Hello', 3)

Hello
Hello
Hello

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define two method parameters: string, number

- Call a method on `number` that repeats`number` times
- Pass a block in as an argument to the above method:
  - Inside the block, output `string` each time the block is called
end
__________________________________________________

=end

#_________________________________________________

#* C - Code

def repeat(string, number)
  number.times do
    puts string
  end
end

repeat('Hello', 3)
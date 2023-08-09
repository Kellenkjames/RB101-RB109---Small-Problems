=begin

* P - [Understanding the] Problem

Problem: Given a method that takes one argument, a positive integer - return a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

input: integer
output: string
rules:
        - Explicit Requirements:
          - Method takes one argument (a positive integer)
          - Returns a string of alternating 1s and 0s, always starting with 1
          - The length of the string should match the given integer

        - Implicit Requirements:
          - New object is returned from the method (string)

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

The tests above should print `true`

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number

- Initialize a local variable called string and assign to an empty string `""`
- Call a method on `number` that repeats `number` times:
- Pass a block to the method as an argument:
  - Inside the block:
    - If the current `index` is even
      - Append `1` to `string`
    - Else
      - Append `0` to `string`
    end
  end

  return `string`
__________________________________________________

=end

#_________________________________________________

#* C - Code

def stringy(number)
  string = ""
  
  number.times do |index|
    index.even? ? string << '1' : string << '0'
  end
  
  string
end

puts stringy(6) == '101010'                   # true
puts stringy(9) == '101010101'             # true
puts stringy(4) == '1010'                       # true 
puts stringy(7) == '1010101'                 # true

#_________________________________________________

# Further Exploration

# Modify `stringy` so it takes an additional optional argument that defaults to `1`. If the method is called with this argument set to `0`, the method should return a String of alternating 0s and 1s, but starting with `0` instead of `1`.

def stringy(number, starting_digit = 1)
  string = ""
  
  if starting_digit == 1
    start_char = '1'
    alternate_char = '0'
  else
    start_char = '0'
    alternate_char = '1'
  end

  number.times do |index|
    index.even? ? string << start_char : string << alternate_char
  end

  string
end

stringy(6, 0) == '010101'
stringy(6) == '101010'
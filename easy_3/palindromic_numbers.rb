=begin

* P - [Understanding the] Problem

Problem: Given a method, return true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

input: integer
output: boolean
rules:
        - Explicit Requirements:
          - Method returns true if its integer argument is palindromic, false otherwise

        - Implicit Requirements:
          -  A palindromic number reads the same forwards and backwards.

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number

- Reassign the local variable`number` to a string
- Compare `number` to `number` reversed

__________________________________________________

=end

#_________________________________________________

#* C - Code

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

#_________________________________________________

# Further Exploration: Suppose your number begins with one or more 0s. Will your method still work? Why or why not? Is there any way to address this?

=begin

* The method would not work correctly for numbers with leading zeros if such numbers are presented as integers, because integers in Ruby don't keep leading zeros.

For example, if you try to pass `00123` to the method, Ruby would interpret it as `123`, and the leading zeros would be lost.

* However, if the numbers are presented as strings, the method could be modified to handle leading zeros. This is because strings can preserve leading zeros.

=end
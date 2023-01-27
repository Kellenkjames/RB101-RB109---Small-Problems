# Palindromic Numbers

=begin

* P - [Understanding the] Problem

Problem: Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

input: integer
output: boolean
rules:
        - Explicit Requirements:
          - Method returns true if its integer argument is palindromic, false otherwise.

        - Implicit Requirements:
          - Method will only accept one integer argument

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Invoke the palindrome? method and pass number.to_s as the argument

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
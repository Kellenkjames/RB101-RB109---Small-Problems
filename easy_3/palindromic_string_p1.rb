# Palindromic Strings (Part 1)

=begin

* P - [Understanding the] Problem

Problem: Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward.

input: string
output: boolean
rules:
        - Explicit Requirements:
          - Return true if the string is passed as an argument, false otherwise.

        - Implicit Requirements:
          - Case matters as does punctuation and spaces.

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- Return true if string is equal to string.reverse, otherwise; false

__________________________________________________

=end

#_________________________________________________

#* C - Code

def palindrome?(string)
  string == string.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
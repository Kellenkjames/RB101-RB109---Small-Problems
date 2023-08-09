=begin

* P - [Understanding the] Problem

Problem: Given a method, return true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward.

input: string
output: boolean
rules:
        - Explicit Requirements:
          - Return true if the string passed as an argument is a palindrome
            - false otherwise
        
        - Implicit Requirements:
          - Case matters as does punctuation and spaces.

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

If `string` reversed is equal to the original `string`
  - return true
Else
  - return false
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def palindrome?(string)
  string == string.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false
palindrome?("madam i'm adam") == false
palindrome?('356653') == true

#_________________________________________________

# Further Exploration: Write a method that determines whether an array is palindromic; that is, the element values appear in the same sequence both forwards and backwards in the array.

def is_palindrome?(arr)
  arr == arr.reverse
end

is_palindrome?([1, 2, 3, 4, 5]) == false
is_palindrome?([1, 1, 1, 1, 1]) == true
is_palindrome?([3, 3, 3, 3, 3]) == true

#_________________________________________________

# Further Exploration: Now write a method that determines whether an array or a string is palindromic; that is, write a method that can take either an array or a string argument, and determines whether that argument is a palindrome. You may not use an `if`, `unless`, or `case` statement or modifier.

def is_still_palindrome?(obj)
  obj == obj.reverse
end

is_still_palindrome?('madam') == true
is_still_palindrome?([1, 1, 1]) == true
is_still_palindrome?([1, 3, 4, 7]) == false
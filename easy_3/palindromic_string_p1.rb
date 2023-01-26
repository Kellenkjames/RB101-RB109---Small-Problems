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

#_________________________________________________

#* Further Exploration

# Write a method that determines whether an array is palindromic; that is, the element values appear in the same sequence both forwards and backwards in the array. 

def arr_palindrome?(arr)
  arr == arr.reverse
end

arr_palindrome?(['foo', 'bar', 'foo']) == true
arr_palindrome?([1, 2, 1]) == true
arr_palindrome?(['2', '5', '5', '7']) == false

#_________________________________________________

# Now write a method that determines whether an array or a string is palindromic; that is, write a method that can take either an array or a string argument, and determines whether that argument is a palindrome. You may not use an if, unless, or case statement or modifier.

def object_palindrome?(object)
  arr = []
  
  counter = 0
  loop do
    arr << object[counter]
    counter += 1
    break if counter == object.size
  end
  
  arr == arr.reverse
end

object_palindrome?([1, 2, 1])
object_palindrome?('madam')
object_palindrome?(['foo', 'bar', 'foo'])

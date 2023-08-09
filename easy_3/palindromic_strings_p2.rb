=begin

* P - [Understanding the] Problem

Problem: Given a method, return true if the string passed as an argument is a palindrome, false otherwise. The method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the `palindrome?`` method you wrote in the previous exercise.

input: string
output: boolean
rules:
        - Explicit Requirements:
          - Method will return true if the string passed as an argument is a palindrome, false otherwise
          - Method should be case-insensitive and ignore all non-alphanumeric characters

        - Implicit Requirements:
          - N/A

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Reassign `string` to the downcased version of `self` with non-alphanumeric characters removed
- Call the `palindrome?` helper method and pass in `string` as an argument

__________________________________________________

=end

#_________________________________________________

#* C - Code

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0–9')
  palindrome?(string)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string as an argument, return a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

input: string
output: new string
rules:
        - Explicit Requirements:
          - Return a new string in which:
            - every uppercase letter is replaced by its lowercase version
            - every lowercase letter is replaced by its uppercase version

        - Implicit Requirements:
          - You may not use String#swapcase; write your own version of this method

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Convert string to an array of chars and iterate over each char:
  - If current `char` is a valid uppercased alphabetic character 
    - lowercase the `char`
  - Elsif current `char` is a valid lowercase alphabetic character 
    - uppercase the `char`
  - Else
    - return `char`
  end
- repeat these steps until the iterator reaches the end of the collection

- join the new array of chars back to a new String

__________________________________________________

=end

#_________________________________________________

#* C - Code

def swapcase(string)
  string.chars.map do |char|
    if char =~ (/[A-Z]/)
      char.downcase
    elsif char =~ (/[a-z]/)
      char.upcase
    else
      char
    end
  end.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
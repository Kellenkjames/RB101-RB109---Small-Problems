=begin

* P - [Understanding the] Problem

Problem: You are given a method named `spin_me` that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

input: string
output: TBD
rules:
        - Explicit Requirements:
          - Method takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed.

        - Implicit Requirements:
          - Determine if the returned string will be the same object as the one passed in as an argument

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

spin_me("hello world") # "olleh dlrow"

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Code is provided. See below for written response.

__________________________________________________

=end

#_________________________________________________

#* C - Code

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

=begin

Written Response:

The returned string will be a new string object. When `split` is called on `str` it creates a new array where each word from the string is a separate object in that array.

Even though `reverse!` is a mutating method, it's not mutating the original string, but rather the separate string objects in the array.

=end

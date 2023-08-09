=begin

* P - [Understanding the] Problem

Problem: Given a method, return a list of all substrings of a string that are palindromic. Each substring must consist of the same sequence of characters forwards as it does backwards.

The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

input: String
output: Array of Strings
rules:
        - Explicit Requirements:
          - Return a list of all substrings of a string that are palindromic
          - Each substring must consist of the same sequence of characters forwards as it does backwards
          - Return value should be arranged in the same sequence as the substrings appear in the string
          - Duplicate palindromes should be included multiple times

        - Implicit Requirements:
          - Case sensitivity matters

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

__________________________________________________

* D - Data Structure

Array `[]`

__________________________________________________

* A - Algorithm

Define the `leading_substrings` method from previous exercise. This method accepts a string and returns a list of all leading substrings within a single string.

Define the `substrings`  method from previous exercise. The method accepts a string and returns a list of all substrings of a string.

[
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

Define a helper method called palindrome? which takes a string:
  - If `string` is equal to `string` reversed AND `string` size is greater than `1`
    - string is a palindrome
  end
end

Define a single method parameter: string

Initialize a local variable called palindromic_substrings and assign to an empty Array literal `[]`

- Call the `substrings` method and iterate over each substring in the array:
  - If the current substring size a palindrome? (call helper method):
    - append substring to `palindromic_substrings`
  - repeat this step until all of the substrings have been processed
end

return `palindromic_substrings`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def leading_substrings(string)
  substrings_arr = []
  1.upto(string.size) do |count|
    substrings_arr << string.slice(0, count)
  end
  substrings_arr
end

def substrings(string)
  substrings_arr = []
  (0...string.size).each do |start_index|
    substrings_arr.concat(leading_substrings(string[start_index..]))
  end
  substrings_arr
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  palindromic_substrings = []
  substrings(string).each do |substring|
    palindromic_substrings << substring if palindrome?(substring)
  end
  palindromic_substrings
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

#_________________________________________________

# Further Exploration: Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case? Alphanumeric characters are alphabetic characters(upper and lowercase) and digits.

def palindrome_v2?(string)
  clean_string = string.downcase.gsub(/[^a-z0-9]/, '')
  clean_string == clean_string.reverse && clean_string.size > 1
end

def palindromes_v2(string)
  palindromic_substrings = []
  substrings(string).each do |substring|
    palindromic_substrings << substring if palindrome_v2?(substring)
  end
  palindromic_substrings
end

palindromes_v2('abcd') == []
palindromes_v2('madam') == ['madam', 'ada']
palindromes_v2('hello-madam-did-madam-goodbye') == ['ll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada', 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did', '-madam-', 'madam', 'ada', 'oo']
palindromes_v2('knitting cassettes') == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']
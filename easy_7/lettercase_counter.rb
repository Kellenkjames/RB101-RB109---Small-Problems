=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string, return a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither. 

input: string
output: hash
rules:
        - Explicit Requirements:
          - Return a hash that contains 3 entries:
            - number of characters in the string that are lowercase letters
            - number of characters that are uppercase letters
            - number of characters that are neither

        - Implicit Requirements:
          - Title-casing is a non-factor

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

__________________________________________________

* D - Data Structure

Hash { }

__________________________________________________

* A - Algorithm

Define a single method parameter: string

Initialize an empty Hash literal and setup the following key-value pairs: 

{
  lowercase: count of lowercase characters in `string`,
  uppercase: count of uppercase characters in `string`,
  neither: count of neither lowercase or uppercase characters in `string`
}

__________________________________________________

=end

#_________________________________________________

#* C - Code

def letter_case_count(string)
  {
    lowercase: string.count('a-z'),
    uppercase: string.count('A-Z'),
    neither: string.count('^a-zA-Z')
  }
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
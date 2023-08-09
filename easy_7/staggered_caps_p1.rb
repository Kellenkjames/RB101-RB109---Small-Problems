=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a String as an argument, return a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase.

Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

input: String
output: new String
rules:
        - Explicit Requirements:
          - Return a new String that contains:
            - original value using a staggered capitalization scheme in which every other character is capitalized
            - remaining characters are lowercase

        - Implicit Requirements:
          - Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Convert `string` to an array of chars and iterate over each char and index:
  - If the index is even
    - transform the current `char` to uppercase version
  - Else
    - transform the current `char` to the lowercase version
  - end

  - join returned Array to new String

__________________________________________________

=end

#_________________________________________________

#* C - Code

def staggered_case(string)
  string.chars.each_with_index.map do |char, index|
    index.even? ? char.upcase : char.downcase
  end.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

#_________________________________________________

# Further Exploration: Can you modify this method so the caller can request that the first character be downcased rather than upcased? If the first character is downcased, then the second character should be upcased, and so on.

def staggered_case_v2(string, need_upper = true)
  result = ''
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case_v2('I Love Launch School!', false) == 'i lOvE LaUnCh sChOoL!'
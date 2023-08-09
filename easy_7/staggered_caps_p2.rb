=begin

* P - [Understanding the] Problem

Problem: Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

input: String
output: new String
rules:
        - Explicit Requirements:
          - Return a new String that contains:
            - original value using a staggered capitalization scheme in which every other character is capitalized
            - remaining characters are lowercase
            - ignore non-alphabetic characters when determining whether it should uppercase or lowercase each letter

        - Implicit Requirements:
          - non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: string

- Initialize a local variable called need_upper and assign to the boolean `true`

- Convert `string` to an array of chars and iterate over each char:
  - If the current `char` is a letter
    - If `need_upper` is equal to `true` (set to `true` by default)
      - set `need_upper` equal to `false`
      - upcase current `char`
    - Else
      - set `need_upper` to `true`
      - downcase the current `char`
    end
  - Else
    - return `char`
  end
end

- join the Array to a new String

__________________________________________________

=end

#_________________________________________________

#* C - Code

def staggered_case(string)
  need_upper = true
  string.chars.map do |char|
    if char =~ /[a-z]/i # if char is a letter
      if need_upper
        need_upper = false
        char.upcase
      else
        need_upper = true
        char.downcase
      end
    else # if char is not a letter
      char
    end
  end.join
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#_________________________________________________

# Further Exploration: Modify this method so the caller can determine whether non-alphabetic characters should be counted when determining the upper/lowercase state. That is, you want a method that can perform the same actions that this method does, or operates like the previous version.

def staggered_case_v2(string, need_upper = true)
  string.chars.map do |char|
    if char =~ /[a-z]/i # if char is a letter
      if need_upper
        need_upper = false
        char.upcase
      else
        need_upper = true
        char.downcase
      end
    else # if char is not a letter
      char
    end
  end.join
end

staggered_case_v2('I Love Launch School!', false) == 'i LoVe LaUnCh ScHoOl!'
staggered_case_v2('ALL CAPS', false) == 'aLl CaPs'
staggered_case_v2('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
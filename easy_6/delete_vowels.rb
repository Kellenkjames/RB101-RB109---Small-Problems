=begin

* P - [Understanding the] Problem

Problem: Given a method that takes an array of strings, return an array of the same string values, except with the vowels (a, e, i, o, u) removed.

input: Array of Strings
output: Array of Strings (original object)
rules:
        - Explicit Requirements:
          - Return an array of strings of the same string values (except with vowels removed)

        - Implicit Requirements:
          - Strings with vowels should preserve case sensitivity

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

__________________________________________________

* D - Data Structure

# Array []

__________________________________________________

* A - Algorithm

Initialize a constant variable called VOWELS and assign to an array of vowels %w(a e i o u A E I O U)

If arr size is equal to 1:
- Join the arr elements and convert to String
- Split the arr to an array of substrings
- Iterate over the array of substrings
  - For each iteration:
    - Select and return elements that are not included in `VOWELS`
  - Repeat this step until all elements are returned that are not included in `VOWELS`
- Join arr of substrings to a new string
- Split new string to an array
Else
- Iterate over the subarrays in arr
  - For each iteration:
    - Return chars of each subarray
      - Select and returns elements that are not included in `VOWELS`
      - Join each subarray to String
    - Repeat this step until all elements are returned that are not included in `VOWELS`

__________________________________________________

=end

#_________________________________________________

#* C - Code

VOWELS = %w(a e i o u A E I O U)

def remove_vowels(arr)
  if arr.size == 1
    arr.join.split('').select { |string| string if !VOWELS.include?(string) }.join.split
  else
    arr.map do |subarray|
      subarray.chars.select { |string| string if !VOWELS.include?(string) }.join
    end
  end
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']




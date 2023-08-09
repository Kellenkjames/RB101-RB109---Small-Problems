=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a year as input, return the century. The return value should be a string that begins with the century number, and ends with `st`, `nd`, `rd`, or `th` as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

input: integer
output: string
rules:
        - Explicit Requirements:
          - Method takes a year as input, returns the century
          - Return value should be a string that begins with the century number and ends with:
            - `st`
            - `nd`
            - `rd`
            - `th`

        - Implicit Requirements:
          - There is no year zero or 0th century

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: year

- Initialize a local variable called year_to_s and assign it to `year` converted to string

1) Mini-problem: Determine the century

- If `year_to_s` ends with '00'
  `century` = (`year` / 100).floor
- Else
  `century` = (`year` / 100).floor + 1
end

2) Mini-problem: Determine the suffix (depends on the last digit of the century number):
  `1` --> `st`
  `2` --> `nd`
  `3` --> `rd`
  4-10 --> `th`
  11 --> `th` (edge case)
  12 --> `th` (edge case)
  13 --> `th` (edge case)

__________________________________________________

=end

#_________________________________________________

#* C - Code

def century(year)
  year_to_string = year.to_s
  
  # Determine the century
  if year_to_string.end_with?('00')
    century = (year / 100).floor
  else
    century = (year / 100).floor + 1
  end

  century = century.to_s

  # Determine the ordinal suffix
  if century.end_with?('1') && !century.end_with?('11')
    ordinal_suffix = 'st'
  elsif century.end_with?('2') && !century.end_with?('12')
    ordinal_suffix = 'nd'
  elsif century.end_with?('3') && !century.end_with?('13')
    ordinal_suffix = 'rd'
  else
    ordinal_suffix = 'th'
  end

  (century + ordinal_suffix)
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
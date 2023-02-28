=begin

* P - [Understanding the] Problem

Problem: Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number. New centuries begin in years that end with `01`. So, the years 1901-2000 comprise the 20th century.

input: Integer
output: String
rules:
        - Explicit Requirements:
          - Method takes a year as input and returns the century
          - Return value should be a string that begins with century number
          - Return value should be a string that ends with:
            - st -->  1st
            - nd --> 2nd
            - rd --> 3rd
            - th --> 4th
          - New centuries begin in years that end with `01`

        - Implicit Requirements:
          - The input doesn't necessarily determine the century year (with no other actions).
      
        - Clarifying Questions:
          - Are we saying that any year ending with `01` is a new century?
          - What is a century?

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

N / A

__________________________________________________

* A - Algorithm

# Mini-Problem: Determine the century number, i.e., 1

- Initialize a local variable called century and assign to`nil`
- Initialize a local variable called year_to_str and assign to return value of year.to_s

# 1st - 10th century
if `year_to_str`.size.between?(1, 3)
  century = year + 99
  century[0] 
end

#* Can we see any sequence patterns? 
- With the exception of the first century, every new century ends with `01`

1st century:
Input size between 1 and 3 
century(1) == 1
century(33) == 1
century(100) == 1

2nd century:
Input size 3
century(101) == 2
century(136) == 2
century(200) == 2

3rd century
Input size 3
century(201) == 3
century(244) == 3
century(300) == 3

__________________________________________________

=end

#_________________________________________________

#* C - Code


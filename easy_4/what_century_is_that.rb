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

- if year.between?(1, 100)
  century = 1
- elsif year.between?(101, 200)
  century = 2
- elsif year.between?(201, 300)
  century = 3
- elsif year.between?(301, 400)
  century = 4
- elsif year.between?(401, 500)
  century = 5
- elsif year.between?(501, 600)
  century = 6
- elsif year.between?(601, 700)
  century = 7
- elsif year.between?(701, 800)
  century = 8
- elsif year.between?(801, 900)
  century = 9
- elsif year.between?(901, 1000)
  century = 10
end

#* What sequnce do we see here? 
- With the exception of the first century, every new century ends with `01`
- From centuries 1-10 (excluding the end of the 10th century, `1000`) the input is between 1-3 digits

- We need to do some manual work until we reach the 11th century

century(1) == 1
century(33) == 1
century(100) == 1

century(101) == 2
century(136) == 2
century(200) == 2



__________________________________________________

=end

#_________________________________________________

#* C - Code


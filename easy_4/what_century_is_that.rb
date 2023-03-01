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
          - The input doesn't determine the century year by default.
            
        - Clarifying Questions:
          - Century defines the stat and end years as inclusive?

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

* A - Algorithm:

# Mini-Problem: Determine the century number first (without the ordinals: 1st, 2nd, 3rd, and 4th):

Base:
  001 - 100:   1
  101 - 200:   2
  201 - 300:  3
  301 - 400:  4
  401 - 500:  5
  501 - 600:  6
  601 - 700:  7
  701 - 800:  8
  801 - 900:  9
  901 - 1000: 10

  1001 - 1100: 11
  1101 - 1200: 12
  1201 - 1300: 13
  1301 - 1400: 14
  1401 - 1500: 15
  1501 - 1600: 16
  1601 - 1700: 17
  1701 - 1800: 18
  1801 - 1900: 19
  
  1901 - 2000: 20
  2001 - 2100: 21
  2101 - 2200: 22
  .....

Step 1: We need to determine the century number based on the input:

#* Create helper method: Get the base values first: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

def find_century(year)
  if year.between?(1, 100)
    century = '1'
  elsif year.between?(101, 200)
    century = '2'
  elsif year.between?(201, 300)
    century = '3'
  elsif year.between?(301, 400)
    century = '4'
  elsif year.between?(401, 500)
    century = '5'
  elsif year.between?(501, 600)
    century = '6'
  elsif year.between?(601, 700)
    century = '7'
  elsif year.between?(701, 800)
    century = '8'
  elsif year.between?(801, 900)
    century = '9'
  elsif year.between?(901, 1000)
    century = '10'
  end
end

Step 2: Use helper method from above to determine century:

year_str = year.to_s

#* if year.size == 1, 2, or 3: evaluate all digits:
if year <= 1000
  find_century(year)
#* if year.size == 4, evaluate the first 3 digits (need to consider digits that ends in '01'):
elsif year >= 1001
  year_digits = year_str[1, 3].to_i
  new_str = find_century(year_digits)
  year_str[0] << new_str 
#* if year.size >= 5, look at the last 3 digits (need to consider digits that ends in '01'):
elsif `year_str`.size >= 5
  new_str = find_century(year[2, 3])
  `year_str[0, 2]` << new_str
end


__________________________________________________

=end

#_________________________________________________

#* C - Code

def find_century(year)
  if year.between?(1, 100)
    century = '1'
  elsif year.between?(101, 200)
    century = '2'
  elsif year.between?(201, 300)
    century = '3'
  elsif year.between?(301, 400)
    century = '4'
  elsif year.between?(401, 500)
    century = '5'
  elsif year.between?(501, 600)
    century = '6'
  elsif year.between?(601, 700)
    century = '7'
  elsif year.between?(701, 800)
    century = '8'
  elsif year.between?(801, 900)
    century = '9'
  elsif year.between?(901, 1000)
    century = '10'
  end
end

def century(year)
  year_str = year.to_s # 1052 => '1052'
  
  if year <= 1000
    find_century(year)
  elsif year >= 1001
    year_digits = year_str[1, 3].to_i
    new_str = find_century(year_digits)
    year_str[0] << new_str
  end
end

# Test cases for years between 1-3 digits:
p century(1) == '1'
p century(5) == '1'
p century(100) == '1'

# Test cases for years with 4 digits:
p century(1000) == '10'
p century(1052) == '11'
p century(1127) == '12'

p century(1001) == '11'
p century(1100) == '11'
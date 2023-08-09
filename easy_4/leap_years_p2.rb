=begin

* P - [Understanding the] Problem

Problem: A continuation of the previous exercise. The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

input: integer
output: boolean
rules:
        - Explicit Requirements:
          - Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4
          - Update the previous method to determine leap years both before and after 1752

        - Implicit Requirements:
          - Extend the previous method

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

- Define a single method parameter: year

- If `year` is before `1752` AND year is divisible by `4`
  -  `true`
- Else...
  - carry over logic from previous method
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def leap_year?(year)
  if year < 1752 && year % 4 == 0 # Julian Calendar
    true
  else
    (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) # Gregorian Calendar
  end
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true
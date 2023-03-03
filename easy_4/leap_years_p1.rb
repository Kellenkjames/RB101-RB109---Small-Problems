=begin

* P - [Understanding the] Problem

Problem: In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

input: Integer
output: Boolean
rules:
        - Explicit Requirements:
          - Leap years occur in every year that is evenly divisible by 4 and not divisible by 100
            - If the year is evenly divisible by 100 it must also be divsible by 400
          - Returns true if the year is a leap year, or false if is not a leap year
          
        - Implicit Requirements:
          - Year will always be greater than 0

        - Clarifying Questions:
          - N / A

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
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

Define a method that accepts a parameter:

if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 100 == 0 && year % 400 == 0
    return true
  else
    return false
  end
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 100 == 0 && year % 400 == 0
    return true
  else
    return false
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
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true
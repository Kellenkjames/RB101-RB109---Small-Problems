=begin

* P - [Understanding the] Problem

Problem: In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100.

If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

input: integer
output: boolean
rules:
        - Explicit Requirements:
          - Leap year occurs in every year that is evenly divisible by 4, unless the year is also divisible by 100
          - If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400

        - Implicit Requirements:
          - The input year will always be greater than 0

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
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: year

- If `year` is divisible by `4` && `year` not divisible by `100` OR `year` is evenly divisible by `400`
    return true
- Else
  return false
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
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

#_________________________________________________

# Further Exploration: The order in which you perform tests for a leap year calculation is important. For what years will leap_year? fail if you rewrite it as:

# def leap_year?(year)
#   if year % 100 == 0
#     false
#   elsif year % 400 == 0
#     true
#   else
#     year % 4 == 0
#   end
# end

#* Any year ending in `00` will fail to qualify as a `leap_year`: 

leap_year?(2100)
leap_year?(2400)
leap_year?(240000)
leap_year?(2000)
leap_year?(1900)
leap_year?(1700)
leap_year?(100)
leap_year?(400)

#_________________________________________________

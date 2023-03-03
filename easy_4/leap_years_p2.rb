=begin

* P - [Understanding the] Problem

Problem: A continuation of the previous exercise. The British Empire adopted the Gregorian Calendar in 1752, which was a leayear. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leayears occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to determine leayears both before and after 1752.

input: Integer
output: Boolean
rules:
        - Explicit Requirements:
          - Before the year 1752, leayear occurs in any year that is evenly divisible by 4
          - After the year 1752, leayear follows the rules of the Gregorian Calendar in 1752

        - Implicit Requirements:
          - Input will always be greater than 1

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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

- if year <= 1752 && year % 4 == 0
  return true
-elsif (year % 4 == 0) && (year % 100 != 0)
  return true
- elsif (year % 100 == 0) && (year % 400 == 0)
  return true
- else
  return false
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def leap_year?(year)
  if year <= 1752 && year % 4 == 0
    return true
  elsif (year % 4 == 0) && (year % 100 != 0)
    return true
  elsif (year % 100 == 0) && (year % 400 == 0)
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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true
=begin

* P - [Understanding the] Problem

Problem: Given a method that, return the number of Friday the 13ths in the year given by an argument.

input: Integer
output: Integer
rules:
        - Explicit Requirements:
          - Return the number of Friday the 13ths in the year given by an argument

        - Implicit Requirements:
          - You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

__________________________________________________

* D - Data Structure

N/A


__________________________________________________

* A - Algorithm

Initialize the Date object

Define a single method parameter: year

- Iterate from `1` up to  `12` times and for each iteration:
  - return count each time the date is equal to Friday the 13th
- repeat the above step until all months in a year (1-12) have been processed

__________________________________________________

=end

#_________________________________________________

#* C - Code

require 'date'

def friday_13th(year)
  (1..12).count { |month| Date.new(year, month, 13).friday? }
end

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2
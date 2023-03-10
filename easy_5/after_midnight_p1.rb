=begin

* - [Understanding the] Problem

Problem: The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

input: Integer
output: result
rules:
        - Explicit Requirements:
          - Method will take a time as input and return the time of day in 24 hour format (hh::mm)
          - Method should work with any integer input

        - Implicit Requirements:
          - 0 as input is equal to midnight
          - Disregard Daylight Savings and Standard Time and other complications

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60

Initialize a constant variable called HOURS_PER_DAY and assign to the Integer 24
Initialize a constant variable called MINUTES_PER_HOUR and assign to the Integer 60

Initialize a local variable called hours and assign to nil
Initialize a local variable called mins and assign to nil
Initialize a local variable called result and assign to empty result " "

Divide the input (minutes) by `60` and return 2 elements (quotient, remainder):
  - Reassign `hours` to first index of the returned Array
  - Reassign `mins` to the second index of the returned Array

#* Minutes before midnight
  if hours.abs == 1 && mins > 0
    hours += HOURS_PER_DAY
    result += "#{hours}:#{mins}"
  elsif hours.abs == HOURS_PER_DAY && mins > 0
    result += "00:0#{mins}"
  elsif hours < 0 && mins > 0
    hours = hours.abs / MINUTES_PER_HOUR
    result +="0#{hours}:#{mins}"
  
  #* Minutes after midnight
  elsif hours == 0 && mins > 0
    result += "00:#{mins}"
  elsif hours > 0 && mins == 0
    hours /= HOURS_PER_DAY
    result += "0#{hours}:00"
  elsif hours > 0 && mins > 0
    result += "#{hours}:#{mins}"
  
  else
    result += "00:00"
  end


return result
__________________________________________________

=end

#_________________________________________________

#* C - Code

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60

def time_of_day(number)
  hours = nil
  mins = nil
  result = ""

  numbers_arr = number.divmod(MINUTES_PER_HOUR)
  hours = numbers_arr[0]
  mins = numbers_arr[1]

  #* Minutes before midnight
  if hours.abs == 1 && mins > 0
    hours += HOURS_PER_DAY
    result += "#{hours}:#{mins}"
  elsif hours.abs == HOURS_PER_DAY && mins > 0
    result += "00:0#{mins}"
  elsif hours < 0 && mins > 0
    hours = hours.abs / MINUTES_PER_HOUR
    result +="0#{hours}:#{mins}"
  
  #* Minutes after midnight
  elsif hours == 0 && mins > 0
    result += "00:#{mins}"
  elsif hours > 0 && mins == 0
    hours /= HOURS_PER_DAY
    result += "0#{hours}:00"
  elsif hours > 0 && mins > 0
    result += "#{hours}:#{mins}"
  
  else
    result += "00:00"
  end
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

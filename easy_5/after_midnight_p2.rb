=begin

* P - [Understanding the] Problem

Problem: As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

input: String
output: Integer
rules:
        - Explicit Requirements:
          - Write two methods that each take a time of day in 24 hour format
            - Return the number of minutes before and after midnight, respectively
            - Both methods should return a value in the range 0..1439

        - Implicit Requirements:
          - You may not use ruby's Date and Time methods

        - Clarifying Questions:
          - N / A

__________________________________________________

* E - Examples / Test Cases

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

__________________________________________________

* D - Data Structure

N / A

__________________________________________________

* A - Algorithm

HOURS_PER_DAY = 24
MINS_PER_HOUR = 60

Max number of mins in a 24-hr period: 23 * (MINS_PER_HOUR) + 59 = 1439

Return value should be in the range of 0..1439

* After midnight method:

Formula: 12 x 60 (mins) = 720 + Remainder (34) = 754

Initialize a local variable called hours and assign to the first two substrings in String:
  - Convert to Integer
Initialize a local variable mins hours and assign to the last two substrings in String:
  - Convert to Integer

If hours < HOURS_PER_DAY
  (hours * MINS_PER_HOUR) + mins
else
  0
end

* Before midnight method:

Formula: 12 x 60 (mins) = 720 - Remainder (34) = 754

Initialize a local variable called hours and assign to the first two substrings in String:
  - Convert to Integer
Initialize a local variable mins hours and assign to the last two substrings in String:
  - Convert to Integer

If hours < HOURS_PER_DAY
  (hours * MINS_PER_HOUR) - mins
else
  0
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

HOURS_PER_DAY = 24
MINS_PER_HOUR = 60

def after_midnight(string)
  hours = string[0, 2].to_i
  mins = string[3, 4].to_i
  hours < HOURS_PER_DAY ? (hours * MINS_PER_HOUR) + mins : 0
end

def before_midnight(string)
  hours = string[0, 2].to_i
  mins = string[3, 4].to_i
  hours < HOURS_PER_DAY ? (hours * MINS_PER_HOUR) - mins : 0
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0



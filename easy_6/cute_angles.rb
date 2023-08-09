=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a floating point number_angle which represents an angle between 0 and 360 degrees, return a String that represents that angle in degrees, minutes, and seconds.

- Use a degree symbol `(°)` to represent degrees
- Use a single quote `(')` to represent minutes
- Use a double quote `("")` to represent seconds

input: integer (float)
output: string
rules:
        - Explicit Requirements:
          - Method takes a floating point number_angle and returns a String that represents an angle between 0 and 360 degrees

        - Implicit Requirements:
          - A degree has 60 minutes, while a minute has 60 seconds

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: number_angle

Initialize a local variable called degree and assign to `number_angle` rounded down to the nearest integer.

Initialize a local variable called minutes and assign to decimal portion of `number_angle` times `60` rounded down to the nearest integer.

Initialize a local variable called minutes_remainder and assign to the remainder of the decimal portion of `minutes`.

Initialize a local variable seconds and assign to `minutes_remainder` times `60` rounded down to the nearest integer.

* Use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07"

- format the final string output

__________________________________________________

=end

#_________________________________________________

#* C - Code

def dms(number_angle)
  degree = number_angle.floor
  minutes = ((number_angle % 1) * 60).floor
  minutes_remainder = ((number_angle % 1) * 60) % 1
  seconds = (minutes_remainder * 60).floor
  format(%(%d°%02d'%02d"), degree, minutes, seconds)
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Further Exploration: Since degrees are normally restricted to the range 0-360, can you modify the code so it returns a value in the appropriate range when the input is less than 0 or greater than 360?

def dms_v2(number_angle)
  number_angle %= 360
  degree = number_angle.floor
  minutes = ((number_angle % 1) * 60).floor
  minutes_remainder = ((number_angle % 1) * 60) % 1
  seconds = (minutes_remainder * 60).floor
  format(%(%d°%02d'%02d"), degree, minutes, seconds)
end

dms_v2(400) == %(40°00'00")
dms_v2(-40) == %(320°00'00")
dms_v2(-420) == %(300°00'00")
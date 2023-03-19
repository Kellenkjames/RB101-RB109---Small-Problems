=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a floating point number_str as an argument. The floating point number_str will represent an angle between 0 and 360 degrees. Return a String that represents that angle in degrees, minutes and seconds.

You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

input: Float (number_str that contains a decimal)
output: String
rules:
        - Explicit Requirements:
          - Input will be a floating point number_str
          - Floating point number_str will represent an angle between 0 and 360 degrees
          - Return a String that represents the angle in degrees, minutes, and seconds

        - Implicit Requirements:
          - If the input is a whole number_str, minutes and seconds will be represented by 00

        - Clarifying Questions:
          - N / A

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

N / A

__________________________________________________

* A - Algorithm

Initialize a constant called DEGREE and assign to the String literal `"\xC2\xB0"`
Initialize a local variable called strings_arr and assign to an empty Array literal `[]`
Initialize a local variable called index and assign to the Integer 0


* Convert from decimal degrees to degrees, minutes, and seconds:

- Start with the whole units of degrees, i.e., if the input is 76.73, start with 76
- Multiply the decimal portion of the figure by 60 (i.e., 73 * 60)
  - The whole number_str becomes the minutes, i.e., 4380
- Take the remaining decimal and multiply it by 60
  - The resulting number_str becomes seconds (can remain as a decimal if needed)
- Take the three sets of number_strs and put them together, (i.e., 76°43'48")

__________________________________________________

=end

#_________________________________________________

#* C - Code

DEGREE = "\xC2\xB0"

def calc_mins(decimal_units)
  minutes = (decimal_units * 60).round
end

def calc_seconds(decimal_units)
  seconds = (decimal_units * 60).to_s
  seconds = seconds.slice(seconds.index('.')..seconds.index(seconds[-1])).to_f
  seconds = (seconds * 60).round
end

def handle_leading_zeros(number)
  number_str = number.to_s
  number_str.slice(number_str.index(".")..(number_str.index(number_str[-2]))).to_f
end

def dms(number)
  number_str = number.to_s
  result = ''

  degrees = number_str.slice(0..(number_str.index('.') - 1)).to_i
  
  # 93.034773
  if number_str.include?('.') && number_str.include?('0')
    handle_leading_zeros(number)
    result += "%(#{degrees.to_s + DEGREE}0#{calc_mins(handle_leading_zeros(number))}\'0#{calc_seconds(handle_leading_zeros(number))}\')"
  end
  
end

p dms(93.034773)
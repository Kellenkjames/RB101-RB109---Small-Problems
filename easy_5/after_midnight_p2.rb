=begin

* P - [Understanding the] Problem

Problem: Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively.

Both methods should return a value in the range `0..1439`

input: string
output: integer
rules:
        - Explicit Requirements:
          - First method will handle minutes before midnight
          - Second method will handle minutes after midnight
          - Both methods should return a value in the range `0..1439`

        - Implicit Requirements:
          - You may not use Ruby's Date and Time methods

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

mins_after_midnight('00:00') == 0
mins_before_midnight('00:00') == 0
mins_after_midnight('12:34') == 754
mins_before_midnight('12:34') == 686
mins_after_midnight('24:00') == 0
mins_before_midnight('24:00') == 0

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

* Return the number of minutes before and after midnight

1) mins_after_midnight

Define a single method parameter: `time`

- Initialize a local variable called mins_per_hour and assign to the integer `60`
- Using parallel assignment, assign hours and mins to the 2-element array [quotient, remainder] after converting `time` to a valid integer and dividing by `100`

- If `time` is equal to '00:00' OR `time` is equal to '24:00'
  - return `0`
- Else
  - multiply `hours` by `mins_per_hour` - `mins`
end

2) mins_before_midnight

Same steps as above except the following changes:

- Initialize a local variable called mins_per_day and assign to the integer `1440`

- If `time` is equal to '00:00' OR `time` is equal to '24:00'
  - return `0`
- Else
  - mins_per_day - multiply `hours` by `mins_per_hour` + `mins`
end

__________________________________________________

=end

#_________________________________________________

#* C - Code

def mins_after_midnight(time)
  mins_per_hour = 60
  hours, mins = time.delete(':').to_i.divmod(100)
  
  time == '00:00' || time == '24:00' ? 0 : (hours * mins_per_hour) + mins
end

mins_after_midnight('00:00') == 0
mins_after_midnight('12:34') == 754
mins_after_midnight('24:00') == 0

#_________________________________________________

def mins_before_midnight(time)
  mins_per_day = 1440
  mins_per_hour = 60
  hours, mins = time.delete(':').to_i.divmod(100)
  
  time == '00:00' || time == '24:00' ? 0 : mins_per_day - ((hours * mins_per_hour) + mins)
end

mins_before_midnight('00:00') == 0
mins_before_midnight('12:34') == 686
mins_before_midnight('24:00') == 0
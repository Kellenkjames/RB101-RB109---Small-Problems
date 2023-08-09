=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a mins using the minute-based format, return the mins of day in 24 hour format (hh::mm). The method should work with any integer input.

You may not use Ruby's Date and mins classes.

input: integer
output: string
rules:
        - Explicit Requirements:
          - Method will take a mins using the minute-based format:
            - If the number of minutes is positive, the mins is after midnight
            - If the number of minutes is negative, the mins is before midnight
          - Method should work with any integer input

        - Implicit Requirements:
          - You may not use Ruby's Date and mins classes
          - Disregard Daylight Savings and Standard mins and other complications
        
        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

mins_of_day(0) == "00:00"
mins_of_day(-3) == "23:57"
mins_of_day(35) == "00:35"
mins_of_day(-1437) == "00:03"
mins_of_day(3000) == "02:00"
mins_of_day(800) == "13:20"
mins_of_day(-4231) == "01:29"

__________________________________________________

* D - Data Structure

N/A

__________________________________________________

* A - Algorithm

Define a single method parameter: time

1. Start with the number of minutes (time) as input.

2. Calculate the total number of minutes within one day (`one_day_in_mins`) which equals to 1440 (60 minutes/hour * 24 hours).

3. Use the modulo operation (`%`) to convert the input time to an equivalent time within a single day (from 0 to 1439 minutes). Assign the result back to `time`.

4. Divide `time` by 60 to get the number of hours and the remaining minutes. Use the `divmod` method which returns the quotient and the remainder as a two-item array. Assign the results to `hours` and `mins` respectively.

5. Use `format` to convert `hours` and `mins` into a string, ensuring they're each two digits long (e.g., "05:03" instead of "5:3").

__________________________________________________

=end

#_________________________________________________

#* C - Code

def time_of_day(time)
  one_day_in_mins = 1440
  time = time % one_day_in_mins
  hours, mins = time.divmod(60)

  format("%02d:%02d", hours, mins)
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
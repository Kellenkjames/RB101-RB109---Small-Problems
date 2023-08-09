=begin

* P - [Understanding the] Problem

Problem: Given a method that determines the mean (average) of three scores passed to it, return the letter value associated with that grade.

Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

input: three integers
output: string
rules:
        - Explicit Requirements:
          - Method will return the mean (average) of three scores passed to it and return the letter value associated with the grade

        - Implicit Requirements:
          - Tested values are all between 0 and 100
          - No need to check for negative values or values greater than 100

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

__________________________________________________

* D - Data Structure

GRADES = {
  (90...100) => 'A',
  (80...90) => 'B',
  (70...80) => 'C',
  (60...70) => 'D',
  (0...60) => 'F'
}

__________________________________________________

* A - Algorithm

Initialize a constant variable called GRADES and assign to a Hash that contains key-value pairs representing grades (range object) and scores ('A' through 'F')

Define three method paramters: score_one, score_two, score_three

Initialize a local variable called mean_avg and assign to the return value of adding all scores together divided by `3`

- Iterate over each key-value pair in `GRADES` and for each iteration:
  - return `value` if key includes `mean_avg`
- repeat the above step until value is found

__________________________________________________

=end

#_________________________________________________

#* C - Code

GRADES = {
  (90...100) => 'A',
  (80...90) => 'B',
  (70...80) => 'C',
  (60...70) => 'D',
  (0...60) => 'F'
}

def get_grade(score_one, score_two, score_three)
  mean_avg = (score_one + score_two + score_three) / 3
  GRADES.each do |range, value|
    return value if range.include?(mean_avg)
  end
end

get_grade(95, 90, 93) == 'A'
get_grade(50, 50, 95) == 'D'

#_________________________________________________

# Further Exploration: How would you handle this if there was a possibility of extra credit grades causing it to exceed 100 points?

def get_grade_v2(score_one, score_two, score_three)
  mean_avg = (score_one + score_two + score_three) / 3
  return 'A+' if mean_avg > 100
  GRADES.each do |range, value|
    return value if range.include?(mean_avg)
  end
end

get_grade_v2(100, 102, 105) == 'A+'
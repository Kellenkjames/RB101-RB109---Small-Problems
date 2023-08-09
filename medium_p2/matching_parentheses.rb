=begin

* P - [Understanding the] Problem

Problem: Given a method that takes a string as an argument, return true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

input: String
output: Boolean
rules:
        - Explicit Requirements:
          - Method returns true if ALL parentheses in the string are properly balanced, false otherwise
          - To be properly balanced, parentheses must occur in matching '(' and ')' pairs

        - Implicit Requirements:
          - Balanced pairs must each start with a opening parentheses, not a closed parentheses

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
balanced?('What ())(is() up') == false

__________________________________________________

* D - Data Structure

Array []

__________________________________________________

* A - Algorithm

Define a single method parameter: string

Initialize a local variable called balance and assign to the integer `0`

- Iterate over each char in `string` and for each iteration:
  - increment `balance` by `1` if the current char is equal to an open parentheses
  - decrement `balance` by `1` if the current char is equal to a closed parentheses
  - return false if `balance` is less than `0`
- repeat the above steps until all chars in string have been processed

return true if `balance` is equal to `0`, false otherwise

The string is balanced if:
  - The ending value of the counter is 0 (which means we have closed all open parentheses)
  - The counter never goes negative (which would mean that a closing parenthesis without a corresponding opening parenthesis was encountered)

__________________________________________________

=end

#_________________________________________________

#* C - Code

def balanced?(string)
  balance = 0
  string.each_char do |char|
    balance += 1 if char == '('
    balance -= 1 if char == ')'
    return false if balance < 0 # Account for cases where a right parentheses occurs before a left
  end
  balance == 0      # Ensure we have the same amount of opening and closing parentheses
end

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
balanced?('What ())(is() up') == false

#_________________________________________________


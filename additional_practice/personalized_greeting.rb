=begin

* P - [Understanding the] Problem

Problem: Write a method that takes two arguments, an array and a hash. The array will contain two or more elements that, when combined with spaces, will produce a person's name.

The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

input: array, hash
output: string
rules:
        - Explicit Requirements:
          - Array will contain two strings
          - Hash will contain one two key-value pairs
          - Return a greeting that uses the person's full name and mentions the person's title and occupations

        - Implicit Requirements:
          - Return a custom greeting based on given inputs

        - Clarifying Questions:
          - How is the array input used in the context of this problem

__________________________________________________

* E - Examples / Test Cases

personalized_greeting(["Alice", "Bob"], {"Alice" => "morning", "Bob" => "evening"}) 
# should output:
# "Good morning, Alice."
# "Good evening, Bob."

personalized_greeting(["Charlie", "Daisy", "Eve"], {"Charlie" => "afternoon", "Daisy" => "night"})
# should output:
# "Good afternoon, Charlie."
# "Good night, Daisy."
# "Hello, Eve."

personalized_greeting(["Frank"], {"George" => "morning"})
# should output:
# "Hello, Frank."

personalized_greeting([], {"Alice" => "morning"})
# should output nothing

personalized_greeting(["Alice", "Bob"], {})
# should output:
# "Hello, Alice."
# "Hello, Bob."

__________________________________________________

* D - Data Structure

Array []
Hash {}

__________________________________________________

* A - Algorithm

High Level: In this problem, the array input represents a list of names of people you want to greet. You're given a hash that represents a mapping of names to the time of day it is for each person.

Define two method parameters: array, hash

- Iterate over the list of names in `array`:
  - If the current array element is present in `hash`
    - Output a personalized greeting for that time of day (e.g., "Good morning, Alice.").
  - Else
    - Output a default greeting (e.g., "Hello, Bob").
  end
end
  
__________________________________________________

=end

#_________________________________________________

#* C - Code

def personalized_greeting(array, hash)
  array.each do |name|
    puts hash[name] ? ("Good #{hash[name]}, #{name}."): ("Hello, #{name}.")
  end
end

personalized_greeting(["Alice", "Bob"], {"Alice" => "morning", "Bob" => "evening"}) 
personalized_greeting(["Charlie", "Daisy", "Eve"], {"Charlie" => "afternoon", "Daisy" => "night"})
personalized_greeting(["Frank"], {"George" => "morning"})
personalized_greeting([], {"Alice" => "morning"})
personalized_greeting(["Alice", "Bob"], {})
=begin

* P - [Understanding the] Problem

Problem: Create a method that takes 2 arguments, an name and a status. The name will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The status will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

input: name, status
output: String
rules:
        - Explicit Requirements:
          - Return a greeting that uses the person's full name and mentions the person's title and occupation

        - Implicit Requirements:
          - First part of the greeting should include elements from the name (person's full name)
          - Second part of the greeting should include person's title and occupation

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."

__________________________________________________

* D - Data Structure

Array []
Hash {}

__________________________________________________

* A - Algorithm

Define two method parameters: name, status

- Output custom message that uses person's full name and person's title and occupation:
  - join array of names to new String
  - join array of values to new String

- output custom message

__________________________________________________

=end

#_________________________________________________

#* C - Code

def greetings(name, status)
  puts "Hello, #{name.join(' ')}!" +
  " Nice to have a #{status[:title]} #{status[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."
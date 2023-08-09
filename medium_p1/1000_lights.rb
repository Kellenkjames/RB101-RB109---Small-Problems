=begin

* P - [Understanding the] Problem

Problem: You have a bank of reverses before you, numbered from 1 to `n`. Each switch is connected to exactly one light that is initially off. You walk down the row of reverses and toggle every one of them to the "on" position.

You go back to the beginning, and on this second pass, you toggle reverses 2, 4, 6 to the "off" position, and so on. On the third pass, you go back again to the beginning and toggle reverses 3, 6, 9 to the "off" position, and so on.

You repeat this process and keep going until you have been through `n` repetitions.

Write a method that takes one argument, the total number of reverses, and returns an Array that identifies which lights are on after `n` repetitions.

input: Integer
output: Array of Integers
rules:
        - Explicit Requirements:
          - Method will do the following:
            - Take one argument, the total number of reverses
            - Return an Array that identifies which lights are on after `n` repetitions

        - Implicit Requirements:
          -  Default state of the light swtiches is toggled to "on"

        - Clarifying Questions:
          - N/A

__________________________________________________

* E - Examples / Test Cases

Example with `n` = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are switched off; 1, 3, 5 are left on
round 3: lights 2, 3, and 4 are switched off; 1 and 5 are left on
round 4: lights 2 and 3 are switched off; 1, 4, and 5 are on [4 is switched on]
round 5: lights 2, 3, and 5 are switched off; 1 and 4 are on [5 is switched off]

The result is that 2 lights are left on, lights 1 and 4. The return value is `[1, 4]`.

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is `[1, 4, 9]`.

__________________________________________________

* D - Data Structure

Array = []

__________________________________________________

* A - Algorithm

Define a single method parameter: `n`

Initialize a local variable called `lights` and assign it to an Array of `false` booleans - size of Array will be `n + 1` to account for zero-index position

#* Mini-problem: Toggle state of lights
- For each round from 1 to `n`:
  - Check each light from 1 to `n`
    - If the position of the light is a multiple of the round number, toggle the state of that light
    end
  end
end

#* Mini-problem: Collect the positions of the lights that are toggled "on"
Initialize a local varaible called on_indices and assign to an empty Array literal `[]`
- Iterate over `lights` from the second position to the end of the array
  - add one to index and append the return value to `on_indices` if boolean is `true`
end

- return `on_indicies`

__________________________________________________

=end

#_________________________________________________

#* C - Code

def on_lights(number_of_lights)
  # Initialize lights array
  lights = Array.new(number_of_lights + 1, false)
  
  # Toggle state of lights
  1.upto(number_of_lights) do |round|
    1.upto(number_of_lights) do |light| # [1, 2, 3, 4, 5]
      if light % round == 0
        lights[light] = !lights[light] # toggle the light if `light` is a multiple of round
      end
    end
  end

  # Collect the positions of the lights that are on
  on_indices = []
  lights.slice(1..-1).each_with_index do |boolean, index|
    on_indices << index + 1 if boolean == true
  end
  
  # Return the positions of the lights that are on
  on_indices
end

p on_lights(5) == [1, 4]
p on_lights(10) == [1, 4, 9]
p on_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]

#_________________________________________________

=begin

Discussion

The inner loop runs to completion (from 1 to n) for each iteration of the outer loop.

Let's consider an example for further clarification. Suppose n equals 3 (i.e., we have 3 switches). The execution will look something like this:

- Outer loop starts with round = 1.
  - Inner loop runs from light = 1 to 3 (because n equals 3). It toggles every switch because every number is a multiple of 1.

- Outer loop continues to round = 2.
  - Inner loop again runs from light = 1 to 3. This time, it only toggles the switches at positions that are multiples of 2 (i.e., switch 2).

- Outer loop continues to round = 3.
  - Inner loop again runs from light = 1 to 3. Now, it only toggles the switch at position 3, because only this position is a multiple of 3.

After this, the outer loop would continue to round = 4, but because 4 exceeds n (which is 3), the loop terminates.

* In the inner loop, `light` takes on every value from 1 to n for each value of round. Therefore, every switch gets checked during every round, and its state is toggled if its position is a multiple of the current round number. This is how the method accurately replicates the described toggling process.

=end
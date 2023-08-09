# Countdown

def decrease(counter)
  counter -= 1
end

counter = 10 # main scope

10.times do
  puts counter
  # decrease(counter)
  counter = decrease(counter)
end

puts 'LAUNCH!'

#_________________________________________________

=begin

Problem: Countdown to launch was outputting `10` each time the block was called

Fix: Reassign the local variable counter to the return value of calling `decrease` while passing `counter` as an argument

* Key Concept: Variable scope. The counter variable initialized on line 5 and the `counter` parameter of the `decrease` method are two independent variables although they share the same name.

When `counter -=1` is executed inside the `decrease` method, it reduces the value of this local `counter` by 1 and then immediately returns this new value.

However, this change has no effect on the `counter` in the main scope

=end

#_________________________________________________

# Further Exploration: We specify `10` two times, which looks a bit redundant. It should be possible to specify it only once. Can you refactor the code accordingly?

def decrease(counter)
  counter -= 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
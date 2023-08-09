# String#upcase! is a destructive method, so why does this code print `HEY you` instead of `HEY YOU`? Modify the code so that it produces the expected output.

def shout_out_to(name)
  # name.chars.each { |c| c.upcase! }
  name.upcase!
  
  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

#_________________________________________________

=begin

Problem: The code does not print the expected output. Should be printing 'HEY YOU'; instead it's printing 'HEY you'.

Fix: Reassign the local variable `name` to the return value of the current method which is now a new object, i.e., Array, then convert the Array back to a String.

* Key Concept: In the original method, `name.chars.each { |c| c.upcase! }`, `name.chars` creates an array of new single-character string objects. These new string objects are separate from the original `name` string.

* When you iterate over this array with `each` and call `c.upcase!`, `c` is each of these new single-character strings, not a part of the original string. Therefore, calling `c.upcase!` has no effect on `name`.

=end
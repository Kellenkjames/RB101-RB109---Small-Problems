**Class and Instance Methods**

What is the difference between `File::path` and `File#path`

# ------------------------------------------------------------------------------------------

`File::path` - Public class methods are called from the class directly: 

```ruby

puts FIle.path('bin')

```
# ------------------------------------------------------------------------------------------

`File#path` - Public instance methods are called on objects directly:

```ruby

f = File.new('my-file.txt')
puts f.path

```
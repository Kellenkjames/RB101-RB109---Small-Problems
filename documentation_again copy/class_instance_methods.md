# Locate the ruby documentation for methods `File::path` and `File#path`. How are they different?

Both methods can be found on the documentation page for the `File` class in the Core API section. `File::path` is a class method, while `File#path` is an instance method.

Class methods are called on the class, while instance methods are called on objects. Thus:

```ruby
puts File.path('bin')
```

Calls the class method `File::path` since we're calling it on the `File` class directly, while:

```ruby
f = File.new('my-file.txt')
puts f.path
```

Calls the instance method `File#path` since we're calling it on an object of the `File` class, namely `f`.

# Simple Analogy:
If a class is like a blueprint for a house, then an instance is a particular house built based on that blueprint. Each house (instance) built from the blueprint (class) will have the same general structure and features, but can have different details like color, number of floors, etc.
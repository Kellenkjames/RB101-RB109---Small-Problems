# Down the Rabbit Hole

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for `YAML::load_file`

=begin

* load_file(filename, **kwargs)

Loads the document contained in `filename`. Returns the YAML contained in filename as a Ruby object, or if the file is empty, it returns the specified `fallback` return value, which defaults to `false`.

=end
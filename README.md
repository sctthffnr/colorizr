= Introduction =

This is a simple gem to colorize terminal output.

There is support for the following colors:

black
red
green
yellow
blue
pink
light_grey
light_blue
white

= Installation =

Installing the gem is as simple as:

  gem install colorizr

= Example Usage =

To use the gem, you must first call the create_colors class method on the String
object:

  String.create_colors

Then, you may change the color for a string by calling the color as a method.
For example, to get yellow terminal output for the word "Yellow":

puts "Yellow".yellow

In addition to the create_colors class method, there is a class method to show
a list of all supported colors:

  String.colors

There is also a class method to provide sample text for all supported colors:

  String.sample_colors

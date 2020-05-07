require_relative '../config/environment'


require 'pry' 


cli = CommandLineInterface.new 
cli.greet 


cli.menu 

binding.pry 
 
puts "the end"